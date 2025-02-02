###
# Bitwuzla: Satisfiability Modulo Theories (SMT) solver.
#
# This file is part of Bitwuzla.
#
# Copyright (C) 2007-2021 by the authors listed in the AUTHORS file.
#
# See COPYING for more information on using this software.
##
# Find MiniSAT
# MiniSat_FOUND - found MiniSat lib
# MiniSat_INCLUDE_DIR - the MiniSat include directory
# MiniSat_LIBRARIES - Libraries needed to use MiniSat

find_path(MiniSat_INCLUDE_DIR NAMES minisat/simp/SimpSolver.h)
find_library(MiniSat_LIBRARIES NAMES minisat)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MiniSat
  DEFAULT_MSG MiniSat_INCLUDE_DIR MiniSat_LIBRARIES)

mark_as_advanced(MiniSat_INCLUDE_DIR MiniSat_LIBRARIES)
if(MiniSat_LIBRARIES)
  message(STATUS "Found MiniSat library: ${MiniSat_LIBRARIES}")
endif()
