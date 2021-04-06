#/bin/bash
if [ "$(playerctl metadata --format "{playerName}") = "spotify")" ]; then
				echo	"$(playerctl metadata --format "{{artist}} {{title}}")"
fi
