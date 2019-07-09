#!/bin/bash

set -ex

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
galculator
glib20
grub
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
