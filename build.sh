#!/bin/sh

msgfmt -v -c po/xfce4-whiskermenu-plugin/xfce4-whiskermenu-plugin-ko.po \
		-o usr/share/locale/ko/LC_MESSAGES/xfce4-whiskermenu-plugin.mo 

msgfmt -v -c po/gooroom-update/gooroom-update-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-update.mo

msgfmt -v -c po/gooroom-sources/gooroom-sources-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-sources.mo

msgfmt -v -c po/live-installer/live-installer-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/live-installer.mo
