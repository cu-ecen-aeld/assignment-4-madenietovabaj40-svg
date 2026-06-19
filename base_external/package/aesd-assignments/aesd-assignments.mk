################################################################################
#
# AESD_ASSIGNMENTS
#
################################################################################

AESD_ASSIGNMENTS_VERSION = 387b6e796624729c40881e010832e80d1d13329f
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-madenietovabaj40-svg.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_MODULE_SUBDIRS = server

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
