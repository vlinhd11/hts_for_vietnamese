# Makefile.in generated automatically by automake 1.5 from Makefile.am.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



SHELL = /bin/bash

srcdir = .
top_srcdir = ..

prefix = /root/hts_for_vietnamese/tools/SPTK-3.9/install
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/share/info
mandir = ${prefix}/share/man
includedir = ${prefix}/include
oldincludedir = /usr/include
pkgdatadir = $(datadir)/
pkglibdir = $(libdir)/
pkgincludedir = $(includedir)/
top_builddir = ..

ACLOCAL = ${SHELL} /root/hts_for_vietnamese/tools/SPTK-3.9/config/missing --run aclocal
AUTOCONF = ${SHELL} /root/hts_for_vietnamese/tools/SPTK-3.9/config/missing --run autoconf
AUTOMAKE = ${SHELL} /root/hts_for_vietnamese/tools/SPTK-3.9/config/missing --run automake
AUTOHEADER = ${SHELL} /root/hts_for_vietnamese/tools/SPTK-3.9/config/missing --run autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_alias = 
host_triplet = x86_64-unknown-linux-gnu
AMTAR = ${SHELL} /root/hts_for_vietnamese/tools/SPTK-3.9/config/missing --run tar
AWK = mawk
CC = gcc
CSH = /bin/csh
DEPDIR = .deps
EXEEXT = 
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
IO_FORMAT = float
IO_SYMBOL = f
LN_S = ln -s
OBJEXT = o
PACKAGE = 
PACKAGE_NAME = SPTK
PACKAGE_VERSION = 3.9
RANLIB = ranlib
VERSION = 
X_CFLAGS = 
X_EXTRA_LIBS = 
X_LIBS = 
X_PRE_LIBS = 
am__include = include
am__quote = 
install_sh = /root/hts_for_vietnamese/tools/SPTK-3.9/config/install-sh

bin_SCRIPTS = bell gseries glogsp grlogsp gwave mgc2mgclsp mgclsp2mgc raw2wav wav2raw
EXTRA_DIST = bell.in gseries.in glogsp.in grlogsp.in gwave.in mgc2mgclsp.in mgclsp2mgc.in raw2wav.in wav2raw.in

CLEANFILES = $(bin_SCRIPTS)

replace_path = sed \
               -e 's,[@]bindir[@],$(bindir),g' \
               -e 's,[@]package_version[@],$(PACKAGE_VERSION),g' \
               -e 's,[@]csh[@],$(CSH),' \
               -e 's,[@]io_symbol[@],$(IO_SYMBOL),g' \
               -e 's,[@]io_format[@],$(IO_FORMAT),g'

subdir = script
mkinstalldirs = $(SHELL) $(top_srcdir)/config/mkinstalldirs
CONFIG_CLEAN_FILES =
SCRIPTS = $(bin_SCRIPTS)

DIST_SOURCES =
DIST_COMMON = Makefile.am Makefile.in
all: all-am

.SUFFIXES:
$(srcdir)/Makefile.in:  Makefile.am  $(top_srcdir)/configure.ac $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  script/Makefile
Makefile:  $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && \
	  CONFIG_HEADERS= CONFIG_LINKS= \
	  CONFIG_FILES=$(subdir)/$@ $(SHELL) ./config.status
install-binSCRIPTS: $(bin_SCRIPTS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  if test -f $$p; then \
	    echo " $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/$$f"; \
	    $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/$$f; \
	  elif test -f $(srcdir)/$$p; then \
	    echo " $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/$$f"; \
	    $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/$$f; \
	  else :; fi; \
	done

uninstall-binSCRIPTS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done
uninstall-info-am:
tags: TAGS
TAGS:


DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = ..
distdir = $(top_distdir)/$(PACKAGE)-$(VERSION)

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  if test -f $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    $(mkinstalldirs) "$(distdir)/$$dir"; \
	  fi; \
	  if test -d $$d/$$file; then \
	    cp -pR $$d/$$file $(distdir) \
	    || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(SCRIPTS)

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(bindir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES) stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic mostlyclean-am

distclean: distclean-am

distclean-am: clean-am distclean-generic

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am:

install-exec-am: install-binSCRIPTS

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic

uninstall-am: uninstall-binSCRIPTS uninstall-info-am

.PHONY: all all-am check check-am clean clean-generic distclean \
	distclean-generic distdir dvi dvi-am info info-am install \
	install-am install-binSCRIPTS install-data install-data-am \
	install-exec install-exec-am install-info install-info-am \
	install-man install-strip installcheck installcheck-am \
	installdirs maintainer-clean maintainer-clean-generic \
	mostlyclean mostlyclean-generic uninstall uninstall-am \
	uninstall-binSCRIPTS uninstall-info-am


bell:
	$(replace_path) < bell.in > $@
	chmod +x $@

gseries:
	$(replace_path) < gseries.in > $@
	chmod +x $@

glogsp:
	$(replace_path) < glogsp.in > $@
	chmod +x $@

grlogsp:
	$(replace_path) < grlogsp.in > $@
	chmod +x $@

gwave:
	$(replace_path) < gwave.in > $@
	chmod +x $@

mgc2mgclsp:
	$(replace_path) < mgc2mgclsp.in > $@
	chmod +x $@

mgclsp2mgc:
	$(replace_path) < mgclsp2mgc.in > $@
	chmod +x $@

raw2wav:
	$(replace_path) < raw2wav.in > $@
	chmod +x $@

wav2raw:
	$(replace_path) < wav2raw.in > $@
	chmod +x $@
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
