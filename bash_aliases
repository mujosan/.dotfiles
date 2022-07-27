
# Linux-specific aliases
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias distro='cat /etc/*-release'
    # List files by size
    alias lt='ls --human-readable --size -1 -S --classify'
    # View only mounted drives
    alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

    local DISTRIB=$(awk -F= '/^NAME/{print $2}' /etc/os-release) # Derive distro
    if [[ ${DISTRIB} = "Ubuntu"* ]] || [[ ${DISTRIB} = "Debian"* ]]; then
        alias sai='sudo apt -y install'
    fi
fi
