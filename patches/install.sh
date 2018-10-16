rootdirectory="$PWD"
dirs="bionic frameworks/av frameworks/base frameworks/native hardware/libhardware packages/apps/Settings system/core system/netd"

for dir in $dirs ; do
	cd $dir
	echo "Applying $dir patches..."
	git apply --unsafe-paths -v $rootdirectory/device/ulefone/t1/patches/$dir/*.patch
	cd $rootdirectory
done
