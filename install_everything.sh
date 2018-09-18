
#!/bin/sh

set -e

DEST_FOLDER=${LOCAL_PREFIX}/ffmpeg_install

./configure \
	--prefix=${DEST_FOLDER} \
	--extra-cflags="-I${LOCAL_PREFIX}/include -I${DEST_FOLDER}/include" \
	--extra-ldflags="-L${LOCAL_PREFIX}/lib -L${DEST_FOLDER}/lib" \
	--enable-gpl \
	--enable-nonfree \
	--enable-libx264 \
	--enable-libfdk-aac \


#	--enable-debug \
#	--disable-optimizations \


make -j32 install

