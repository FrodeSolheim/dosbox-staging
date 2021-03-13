uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

srcdir = fsbuild/_build/dosbox-staging-src

all: build dosbox-staging${exe}

build:
	make -C ${srcdir}

dosbox-staging${exe}: ${srcdir}/src/dosbox${exe}
	cp ${srcdir}/src/dosbox${exe} dosbox-staging${exe}

clean:
	if [ -d ${srcdir} ]; then \
		make -C ${srcdir} clean; fi
	rm -f dosbox-staging${exe}
