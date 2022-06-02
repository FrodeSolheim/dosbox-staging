uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

srcdir = fsbuild/_build/dosbox-staging-src

all: build dosbox-staging${exe}

build:
	cd ${srcdir} && ninja -C build

dosbox-staging${exe}: ${srcdir}/build/dosbox${exe}
	cp ${srcdir}/build/dosbox${exe} dosbox-staging${exe}

clean:
	if [ -d ${srcdir} ]; then \
		cd ${srcdir} && ninja -C build clean; fi
	rm -f dosbox-staging${exe}
