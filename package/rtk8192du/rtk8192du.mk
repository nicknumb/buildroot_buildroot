################################################################################
#
# amlogic 8192du driver
#
################################################################################

RTK8192DU_VERSION = $(call qstrip,$(BR2_PACKAGE_RTK8192DU_GIT_VERSION))
RTK8192DU_SITE = $(call qstrip,$(BR2_PACKAGE_RTK8192DU_GIT_REPO_URL))

ifeq ($(BR2_PACKAGE_RTK8192DU_LOCAL),y)
RTK8192DU_SITE = $(call qstrip,$(BR2_PACKAGE_RTK8192DU_LOCAL_PATH))
RTK8192DU_SITE_METHOD = local
endif
define RTK8192DU_BUILD_CMDS
	mkdir -p $(LINUX_DIR)/../hardware/wifi/realtek/drivers;
	ln -sf $(RTK8192DU_DIR) $(LINUX_DIR)/../hardware/wifi/realtek/drivers/8192du
endef
$(eval $(generic-package))
