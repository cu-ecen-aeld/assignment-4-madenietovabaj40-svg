AESD_ASSIGNMENTS_VERSION = 1
AESD_ASSIGNMENTS_SITE = /home/user/assignment-4-madenietovabaj40-svg/aesd-assignments-source
AESD_ASSIGNMENTS_SITE_METHOD = local

# Убираем AESD_ASSIGNMENTS_BUILD_CMDS, так как компилировать код на C нам не из чего

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/bin
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/etc/finder-app/conf
	# Копируем твой shell-скрипт и переименовываем его просто в writer
	$(INSTALL) -m 0755 $(@D)/finder-app/writer.sh $(TARGET_DIR)/usr/bin/writer
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0644 $(@D)/finder-app/conf/* $(TARGET_DIR)/etc/finder-app/conf/
endef

$(eval $(generic-package))
