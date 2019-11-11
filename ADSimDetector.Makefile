#
#  Copyright (c) 2019            Jeong Han Lee
#  Copyright (c) 2017 - 2019     European Spallation Source ERIC
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
#           Jeong Han Lee
# email   : tomaszbrys@esss.se
#           jeonghan.lee@gmail.com
# Date    : Monday, November  4 16:50:33 CET 2019
# version : 0.0.3
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS

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
TEMPLATES += $(APPDB)/simDetector_settings.req

HEADERS   += $(APPSRC)/simDetector.h
SOURCES   += $(APPSRC)/simDetector.cpp
DBDS      += $(APPSRC)/simDetectorSupport.dbd


db:
.PHONY: db
#
.PHONY: vlibs
vlibs:
#
