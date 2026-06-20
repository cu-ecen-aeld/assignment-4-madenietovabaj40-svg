AESD_ASSIGNMENTS_VERSION = 'c1dc30035cc9a0517ae84ee3996baa8b6d4e7db6'
AESD_ASSIGNMENTS_SITE = $(@D)
AESD_ASSIGNMENTS_SITE_METHOD = local

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
