#!/bin/bash

install_dir="/etc/update-motd.d"

motds="\
11-name
20-sysinfo
30-disks
60-docker
90-blank"

ifs_save="$IFS"
while IFS=, read name; do

    echo "Installing $name into $install_dir"

    cp "$name" "$install_dir/$name"
    chmod 755 "$install_dir/$name"

done <<< "$motds"
