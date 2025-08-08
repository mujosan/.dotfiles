function mksymlink -d 'Make symlink with folder icon'
    if test (count $argv) -ne 2
        echo "Usage: mksymlink <source> <destination>"
        return 1
    end

    set source (realpath $argv[1])
    set dest (realpath -m $argv[2])

    # Create the symlink
    ln -s "$source" "$dest"

    # Icon file location
    set iconfile "$HOME/Library/Application Support/SymlinkIcons/alias_folder_icon.icns"

    if test -f "$iconfile"
        # Apply the stored folder-with-arrow icon
        /usr/bin/osascript -e "tell application \"Finder\" to set the icon of POSIX file \"$dest\" to the icon of POSIX file \"$iconfile\""

        # Refresh only the containing folder in Finder
        set parent_dir (dirname "$dest")
        /usr/bin/osascript -e "tell application \"Finder\" to update POSIX file \"$parent_dir\""
    else
        echo "Error: Icon file $iconfile not found. Please create it first."
    end
end
