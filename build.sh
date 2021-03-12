#!/bin/bash

#
# Copyright (C) 2019 jongkyung.woo <jkwoo@gooroom.kr>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

set -x

# Gooroom PO
gooroom_po=(
gooroom-update
gooroom-sources
live-installer
)

# Debian PO
debian_po=(
gnome-flashback
gnome-mpv
gnome-panel
gnome-screenshot
galculator
glib20
grub
libpwquality
NetworkManager
nm-applet
#network-manager-applet
synaptic
polkit-1
gtk30
system-config-printer
shadow
metacity
nemo
nemo-extensions
)

# Gooroom
mkdir -p usr/share/gooroom/locale/ko/LC_MESSAGES
for po_name in "${gooroom_po[@]}"; do
    msgfmt -v -c po/$po_name/$po_name-ko.po \
              -o usr/share/gooroom/locale/ko/LC_MESSAGES/$po_name.mo
done

# Debian
for po_name in "${debian_po[@]}"; do
    mkdir -p usr/share/gooroom/locale/debian/$po_name/ko
    msgfmt -v -c po/$po_name/$po_name-ko.po \
              -o usr/share/gooroom/locale/debian/$po_name/ko/$po_name.mo
done

## Grub
#mkdir -p boot/grub/locale
#msgfmt -v -c po/grub/grub-ko.po -o boot/grub/locale/ko.mo
