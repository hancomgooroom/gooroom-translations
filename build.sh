#!/bin/sh

# Gooroom
mkdir -p usr/share/gooroom/locale/ko/LC_MESSAGES

msgfmt -v -c po/gooroom-update/gooroom-update-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-update.mo

msgfmt -v -c po/gooroom-sources/gooroom-sources-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/gooroom-sources.mo

msgfmt -v -c po/live-installer/live-installer-ko.po \
		-o usr/share/gooroom/locale/ko/LC_MESSAGES/live-installer.mo

# Debian
mkdir -p usr/share/gooroom/locale/debian/galculator/ko
msgfmt -v -c po/galculator/galculator-ko.po \
		-o usr/share/gooroom/locale/debian/galculator/ko/galculator.mo

mkdir -p usr/share/gooroom/locale/debian/glib2.0/ko
msgfmt -v -c po/glib2.0/glib20-ko.po \
		-o usr/share/gooroom/locale/debian/glib2.0/ko/glib20.mo

# Grub
mkdir -p usr/share/gooroom/locale/debian/grub/ko
msgfmt -v -c po/grub/grub-ko.po \
		-o usr/share/gooroom/locale/debian/grub/ko/grub.mo

mkdir -p boot/grub/locale
msgfmt -v -c po/grub/grub-ko.po \
		-o boot/grub/locale/ko.mo
