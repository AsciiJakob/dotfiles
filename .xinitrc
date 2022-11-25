setxkbmap se
xsetroot -solid "#1a1919"
pipewire&
pipewire-pulse&
pipewire-media-session&
#i3
exec dbus-run-session i3
