#!/bin/sh

msgfmt po/xfce4-whiskermenu-plugin/xfce4-whiskermenu-plugin-ko.po \
		-o usr/share/locale/ko/LC_MESSAGES/xfce4-whiskermenu-plugin.mo 

msgfmt po/gooroom-update/gooroom-update-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-update.mo

msgfmt po/gooroomsources/gooroomsources-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroomsources.mo
