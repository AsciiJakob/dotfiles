setxkbmap se
export XDG_CURRENT_DESKTOP=i3
xsetroot -solid "#1a1919"
xhost +si:localuser:root # allow acpi handler to xautolock -locknow
pipewire&
pipewire-pulse&
#pipewire-media-session&
wireplumber&
#i3
exec dbus-run-session i3
#exec dbus-run-session startplasma-x11
