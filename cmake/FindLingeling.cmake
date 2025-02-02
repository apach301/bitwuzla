###
# Bitwuzla: Satisfiability Modulo Theories (SMT) solver.
#
# This file is part of Bitwuzla.
#
# Copyright (C) 2007-2021 by the authors listed in the AUTHORS file.
#
# See COPYING for more information on using this software.
##
# Find Lingeling
# Lingeling_FOUND - found Lingeling lib
# Lingeling_INCLUDE_DIR - the Lingeling include directory
# Lingeling_LIBRARIES - Libraries needed to use Lingeling

find_path(Lingeling_INCLUDE_DIR NAMES lglib.h)
find_library(Lingeling_LIBRARIES NAMES lgl)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Lingeling
  DEFAULT_MSG Lingeling_INCLUDE_DIR Lingeling_LIBRARIES)

mark_as_advanced(Lingeling_INCLUDE_DIR Lingeling_LIBRARIES)
if(Lingeling_LIBRARIES)
  message(STATUS "Found Lingeling library: ${Lingeling_LIBRARIES}")
endif()
