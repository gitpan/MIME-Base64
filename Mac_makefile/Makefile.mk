# This Makefile is for the MIME::Base64 extension to perl.
#
# It was generated automatically by MakeMaker version
# 2.11 (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	NAME => q[MIME::Base64]
#	VERSION_FROM => q[Base64.pm]
#	dist => { COMPRESS=>q[gzip -9f], SUFFIX=>q[gz] }

# --- MakeMaker constants section:
NAME = MIME::Base64
DISTNAME = MIME-Base64
NAME_SYM = MIME_Base64
VERSION = 2.11
VERSION_SYM = 2_11
XS_VERSION = 2.11
INST_LIB = ::::lib
INST_ARCHLIB = ::::lib
PERL_LIB = ::::lib
PERL_SRC = ::::
PERL = ::::miniperl
FULLPERL = ::::perl
SOURCE =  Base64.c

MODULES = Base64.pm \
	QuotedPrint.pm


.INCLUDE : $(PERL_SRC)BuildRules.mk


# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = MIME:Base64
BASEEXT = Base64
ROOTEXT = MIME:

# Handy lists of source code files:
XS_FILES= Base64.xs
C_FILES = Base64.c
H_FILES = 


.INCLUDE : $(PERL_SRC)ext:ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: Base64.exp


Base64.exp: Makefile.PL
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "MIME::Base64", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	$(RM_RF) Base64.c
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker postamble section:


# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(PERL_SRC)PerlInstall -l $(PERL_LIB)
	$(PERL_SRC)PerlInstall -l "Bird:MacPerl Ä:site_perl:"

.INCLUDE : $(PERL_SRC)BulkBuildRules.mk


# End.
