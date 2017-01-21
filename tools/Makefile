#
# Makefile
# truong-d, 2017-01-21 18:30
#

all: htk sptk
	@echo "Makefile needs your attention"

htk:
	cd htk && \
		CC=gcc-4.7 CXX=g++-4.7 ./configure --prefix=`pwd`/install CFLAGS="-DARCH=linux" --disable-hslab && \
		make -j 3 && make install

sptk:
	cd SPTK-3.9 && autoreconf -f -i && \
		CC=gcc-4.7 CXX=g++-4.7 ./configure --prefix=`pwd`/install && \
		make -j 5 && make install

.PHONY: htk sptk
# vim:ft=make
#
