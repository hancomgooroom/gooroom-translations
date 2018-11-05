#!/bin/sh

msgfmt -v -c po/gooroom-update/gooroom-update-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-update.mo

msgfmt -v -c po/gooroom-sources/gooroom-sources-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-sources.mo

msgfmt -v -c po/live-installer/live-installer-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/live-installer.mo

msgfmt -v -c po/galculator/galculator-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/galculator.mo

msgfmt -v -c po/grub/grub-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/grub.mo

msgfmt -v -c po/grub/grub-ko.po \
		-o boot/grub/locale/ko.mo

msgfmt -v -c po/glib2.0/glib20-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/glib20.mo
