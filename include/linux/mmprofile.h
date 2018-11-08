/*
 * Copyright (C) 2015 MediaTek Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 */

#ifndef __MMPROFILE_H__
#define __MMPROFILE_H__
#include "mmprofile_static_event.h"

#ifdef __cplusplus
extern "C" {
#endif

#define MMPROFILE_EVENT_NAME_MAX_LEN 31

#define MMP_Event mmp_event

typedef unsigned int mmp_event;

typedef enum {
	MMPROFILE_FLAG_START = 1,
	MMPROFILE_FLAG_END = 2,
	MMPROFILE_FLAG_PULSE = 4,
	MMPROFILE_FLAG_EVENT_SEPARATOR = 8,
	MMPROFILE_FLAG_SYSTRACE = 0x80000000,
	MMPROFILE_FLAG_MAX = 0xFFFFFFFF
} mmp_log_type;

typedef enum {
	MMPROFILE_META_STRING_MBS = 1,
	MMPROFILE_META_STRING_WCS,
	MMPROFILE_META_STRUCTURE,
	MMPROFILE_META_BITMAP,
	MMPROFILE_META_RAW,
	MMPROFILE_META_USER = 0x10000000,
	MMPROFILE_META_USER_M4U_REG,
	MMPROFILE_META_MAX = 0xFFFFFFFF
} mmp_metadata_type;

typedef enum {
	MMPROFILE_BITMAP_RGB565 = 1,
	MMPROFILE_BITMAP_RGB888,
	MMPROFILE_BITMAP_RGBA8888,
	MMPROFILE_BITMAP_BGR888,
	MMPROFILE_BITMAP_BGRA8888,
	MMPROFILE_BITMAP_UYVY,
	MMPROFILE_BITMAP_VYUY,
	MMPROFILE_BITMAP_YUYV,
	MMPROFILE_BITMAP_YVYU,
	MMPROFILE_BITMAP_MAX = 0xFFFFFFFF
} mmp_pixel_format;

typedef struct {
	unsigned int data1;         /* data1 (user defined) */
	unsigned int data2;         /* data2 (user defined) */
	mmp_metadata_type data_type; /* meta data type */
	unsigned int size;          /* meta data size */
	void *p_data;                /* meta data pointer */
} mmp_metadata_t;

#ifdef CONFIG_COMPAT
struct compat_mmp_metadata_t {
	unsigned int data1;         /* data1 (user defined) */
	unsigned int data2;         /* data2 (user defined) */
	mmp_metadata_type data_type; /* meta data type */
	unsigned int size;          /* meta data size */
	unsigned int p_data;        /* meta data pointer */
};
#endif

typedef struct {
	unsigned int data1;         /* data1 (user defined) */
	unsigned int data2;         /* data2 (user defined) */
	unsigned int struct_size;   /* structure size (bytes) */
	void *p_data;                /* structure pointer */
	char struct_name[32];       /* structure name */
} mmp_metadata_structure_t;

typedef struct {
	unsigned int data1;         /* data1 (user defined) */
	unsigned int data2;         /* data2 (user defined) */
	unsigned int width;         /* image width */
	unsigned int height;        /* image height */
	mmp_pixel_format format;     /* image pixel format */
	unsigned int start_pos;     /* start offset of image data (base on p_data) */
	unsigned int bpp;           /* bits per pixel */
	int pitch;                  /* image pitch (bytes per line) */
	unsigned int data_size;     /* image data size (bytes) */
	unsigned int down_sample_x; /* horizontal down sample rate (>=1) */
	unsigned int down_sample_y; /* vertical down sample rate (>=1) */
	void *p_data;                /* image buffer address */
} mmp_metadata_bitmap_t;

#ifdef CONFIG_MMPROFILE
mmp_event mmprofile_register_event(mmp_event parent, const char *name);
mmp_event mmprofile_find_event(mmp_event parent, const char *name);
void mmprofile_enable_event(mmp_event event, long enable);
void mmprofile_enable_ftrace_event(mmp_event event, long enable, long ftrace);
void mmprofile_enable_event_recursive(mmp_event event, long enable);
void mmprofile_enable_ftrace_event_recursive(mmp_event event, long enable, long ftrace);
long mmprofile_query_enable(mmp_event event);
void mmprofile_log(mmp_event event, mmp_log_type type);
void mmprofile_log_ex(mmp_event event, mmp_log_type type, unsigned long data1, unsigned long data2);
long mmprofile_log_meta(mmp_event event, mmp_log_type type, mmp_metadata_t *p_meta_data);
long mmprofile_log_meta_string(mmp_event event, mmp_log_type type, const char *str);
long mmprofile_log_meta_string_ex(mmp_event event, mmp_log_type type,
		unsigned long data1, unsigned long data2, const char *str);
long mmprofile_log_meta_structure(mmp_event event, mmp_log_type type, mmp_metadata_structure_t *p_meta_data);
long mmprofile_log_meta_bitmap(mmp_event event, mmp_log_type type, mmp_metadata_bitmap_t *p_meta_data);
long mmprofile_log_meta_yuv_bitmap(mmp_event event, mmp_log_type type, mmp_metadata_bitmap_t *p_meta_data);
void mmprofile_start(int start);
void mmprofile_enable(int enable);
unsigned int mmprofile_get_dump_size(void);
void mmprofile_get_dump_buffer(unsigned int start, unsigned long *p_addr, unsigned int *p_size);
#endif

/*
 * if in kernel config CONFIG_MMPROFILE is not set, and the kernel makefile had define
 * obj-$(CONFIG_MMPROFILE) += mmp/
 * , the mmp/ driver is compiled but not built-in. Put dummy API implementation here.
 */
#ifndef CONFIG_MMPROFILE
static inline mmp_event mmprofile_register_event(mmp_event parent, const char *name)
{
	return 0;
}

static inline mmp_event mmprofile_find_event(mmp_event parent, const char *name)
{
	return 0;
}

static inline void mmprofile_enable_event(mmp_event event, long enable)
{
}

static inline void mmprofile_enable_event_recursive(mmp_event event, long enable)
{
}

static inline void mmprofile_enable_ftrace_event(mmp_event event, long enable, long ftrace)
{
}

static inline void mmprofile_enable_ftrace_event_recursive(mmp_event event, long enable, long ftrace)
{
}

static inline long mmprofile_query_enable(mmp_event event)
{
	return 0;
}

static inline void mmprofile_log_ex(mmp_event event, mmp_log_type type, unsigned long data1, unsigned long data2)
{
}

static inline void mmprofile_log(mmp_event event, mmp_log_type type)
{
}

static inline long mmprofile_log_meta(mmp_event event, mmp_log_type type, mmp_metadata_t *p_meta_data)
{
	return 0;
}

static inline long mmprofile_log_meta_structure(mmp_event event, mmp_log_type type,
				mmp_metadata_structure_t *p_meta_data)
{
	return 0;
}

static inline long mmprofile_log_meta_string_ex(mmp_event event, mmp_log_type type, unsigned long data1,
				unsigned long data2, const char *str)
{
	return 0;
}

static inline long mmprofile_log_meta_string(mmp_event event, mmp_log_type type, const char *str)
{
	return 0;
}

static inline long mmprofile_log_meta_bitmap(mmp_event event, mmp_log_type type, mmp_metadata_bitmap_t *p_meta_data)
{
	return 0;
}

static inline long mmprofile_log_meta_yuv_bitmap(mmp_event event, mmp_log_type type, mmp_metadata_bitmap_t *p_meta_data)
{
	return 0;
}

static inline void mmprofile_start(int start)
{
}

static inline void mmprofile_enable(int enable)
{
}
#endif

#ifdef __cplusplus
}
#endif
#endif
