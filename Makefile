# [K] (C)2020
# http://github.com/kongfl888

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-i18n-sqm-zh-cn
PKG_VERSION:=1.4.0
PKG_RELEASE:=2
PKG_DATE:=20200629

PKG_MAINTAINER:=kongfl888 <kongfl888@outlook.com>
PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=LuCI
  SUBMENU:=Luci
  TITLE:=luci-i18n-sqm-zh-cn
  PKGARCH:=all
  DEPENDS:=+luci-app-sqm
endef

define Package/$(PKG_NAME)/description
	luci-i18n-sqm-zh-cn
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./po/zh-cn/sqm.zh-cn.po $(1)/usr/lib/lua/luci/i18n/sqm.zh-cn.lmo
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

