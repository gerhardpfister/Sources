#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])
AC_INIT([libgfan], [0.1], [ren@mathematik.uni-kl.de])
AC_CONFIG_MACRO_DIR([../m4])
AC_CONFIG_SRCDIR([gfanlib.h])
#AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE([-Wall foreign subdir-objects]) # -Wno-extra-portability -Werror silent-rules
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES])
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])

AM_MAINTAINER_MODE

SING_RESET_FLAGS()
SING_CHECK_SET_ARGS()

# Checks for programs.
# AC_PROG_CC
# AC_PROG_CXX
AC_PROG_LN_S
#AC_PROG_INSTALL

# Checks for libraries.

LT_INIT

# Checks for header files.
AC_HEADER_STDC

LB_CHECK_GMP(3.1.1,,AC_MSG_ERROR([Unable to find GMP on your machine: please use --with-gmp=PATH_TO_DIR_CONTAINING_LIB_AND_INCLUDE (see also ./configure --help if you do not understand what we are talking about)]))
SING_CHECK_GFANLIB

# AC_CHECK_HEADERS([gmp.h])
# if test "$ac_cv_header_gmp_h" == no
# then
#	AC_MSG_WARN([Error, gmp.h is missing!])
#	exit 1
# fi
AC_CHECK_HEADERS([cdd/setoper.h setoper.h])
if test "$ac_cv_header_setoper_h" == no -a "$ac_cv_header_cdd_setoper_h" == no
then
	AC_MSG_WARN([Error, setoper.h is missing!])
fi

# if setoper.h is there, assume that also cdd.h is there
#AC_CHECK_HEADERS([cdd/cdd.h cdd.h],,,
#[
## include <setoper.h>
#])

if test "$ac_cv_header_cdd_h" == no -a "$ac_cv_header_cdd_cdd_h" == no
then
	AC_MSG_WARN([Error, cdd.h is missing!])
fi

if test "x$ENABLE_GFANLIB" = xyes; then
if test "$ac_cv_header_setoper_h" == no -a "$ac_cv_header_cdd_setoper_h" == no
then
	exit 1
fi
if test "$ac_cv_header_cdd_h" == no -a "$ac_cv_header_cdd_cdd_h" == no
then
	exit 1
fi
fi

# Checks for typedefs, structures, and compiler characteristics.
AC_C_INLINE


#AC_MSG_RESULT($ac_cv_singuname)
#if test "$ac_cv_singuname" = unknown; then
#  AC_MSG_WARN(Unknown architecture: Check singuname.sh)
#  ac_cv_singuname="unknown"
#fi
#AC_DEFINE_UNQUOTED(S_UNAME, "$ac_cv_singuname")
#SINGUNAME=$ac_cv_singuname
#AC_SUBST(SINGUNAME)

AC_CONFIG_FILES([Makefile])
AC_CONFIG_HEADERS([config.h])
AC_OUTPUT
