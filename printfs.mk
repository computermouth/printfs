################################################################################
#
# printfs
#
################################################################################

PRINTFS_VERSION = master
PRINTFS_REPO_NAME = printfs
PRINTFS_SITE = https://github.com/computermouth/$(PRINTFS_REPO_NAME)
PRINTFS_SITE_METHOD = git

define PRINTFS_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define PRINTFS_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/printfs $(TARGET_DIR)/usr/bin/printfs
endef

$(eval $(generic-package))

