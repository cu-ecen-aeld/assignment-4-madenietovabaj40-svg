AESD_ASSIGNMENTS_VERSION = '1.0'
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-madenietovabaj40-svg.git
AESD_ASSIGNMENTS_SITE_METHOD = git

define AESD_ASSIGNMENTS_BUILD_CMDS
	# Настройку компиляции сделаем на следующих шагах
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	# Копирование скриптов в rootfs настроим позже
endef

$(eval $(generic-package))
