#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : tomaszbrys
# email   : tomaszbrys@esss.se
# Date    : generated by 2018Mar09-1513-22CET
# version : 0.0.0 
#
# template file is generated by ./prepare_module.bash with c7ba3bde93792040ab8c850fe6d118860e5fefbb

# Please look at many other _module_.Makefile in e3-* repository
# 

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif

ifneq ($(strip $(ADCORE_DEP_VERSION)),)
ADCore_VERSION=$(ADCORE_DEP_VERSION)
endif


APP:=simDetectorApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src

USR_INCLUDES += -I$(where_am_I)$(APPSRC)

TEMPLATES += $(APPDB)/simDetector.template

HEADERS   += $(APPSRC)/simDetector.h
SOURCES   += $(APPSRC)/simDetector.cpp
DBDS      += $(APPSRC)/simDetectorSupport.dbd






# db rule is the default in RULES_E3, so add the empty one

db:
