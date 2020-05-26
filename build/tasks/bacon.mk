# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CUSTOM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(CUSTOM_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(CUSTOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CUSTOM_TARGET_PACKAGE).md5sum
	$(hide) ./vendor/aosp/tools/generate_json_build_info.sh $(CUSTOM_TARGET_PACKAGE)
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}ShapeShiftOS ${txtrst}";
	@echo -e ""
	@echo -e ${CL_GRN}"██████  ██░ ██  ▄▄▄       ██▓███  ▓█████   ██████  ██░ ██  ██▓  █████▒▄▄▄█████▓ ▒█████    ██████   "
	@echo -e ${CL_GRN}"▒██    ▒ ▓██░ ██▒▒████▄    ▓██░  ██▒▓█   ▀ ▒██    ▒ ▓██░ ██▒▓██▒▓██   ▒ ▓  ██▒ ▓▒▒██▒  ██▒▒██    ▒ "
	@echo -e ${CL_GRN}"░ ▓██▄   ▒██▀▀██░▒██  ▀█▄  ▓██░ ██▓▒▒███   ░ ▓██▄   ▒██▀▀██░▒██▒▒████ ░ ▒ ▓██░ ▒░▒██░  ██▒░ ▓██▄   "
	@echo -e ${CL_GRN}"  ▒   ██▒░▓█ ░██ ░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄   ▒   ██▒░▓█ ░██ ░██░░▓█▒  ░ ░ ▓██▓ ░ ▒██   ██░  ▒   ██▒"
	@echo -e ${CL_GRN}"▒██████▒▒░▓█▒░██▓ ▓█   ▓██▒▒██▒ ░  ░░▒████▒▒██████▒▒░▓█▒░██▓░██░░▒█░      ▒██▒ ░ ░ ████▓▒░▒██████▒▒"
	@echo -e ${CL_GRN}"▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒ ▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░▓   ▒ ░      ▒ ░░   ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░"
	@echo -e ${CL_GRN}"░ ░▒  ░ ░ ▒ ░▒░ ░  ▒   ▒▒ ░░▒ ░      ░ ░  ░░ ░▒  ░ ░ ▒ ░▒░ ░ ▒ ░ ░          ░      ░ ▒ ▒░ ░ ░▒  ░ ░"
	@echo -e ${CL_GRN}"░  ░  ░   ░  ░░ ░  ░   ▒   ░░          ░   ░  ░  ░   ░  ░░ ░ ▒ ░ ░ ░      ░      ░ ░ ░ ▒  ░  ░  ░  "
	@echo -e ${CL_GRN}"      ░   ░  ░  ░      ░  ░            ░  ░      ░   ░  ░  ░ ░                       ░ ░        ░  "
	@echo -e ""
	@echo -e "Package Complete: $(CUSTOM_TARGET_PACKAGE)" >&2
	@echo -e "md5: `cat $(CUSTOM_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(CUSTOM_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""                                                                                          
	

