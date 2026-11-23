# What came after !roll is in TS3BOT_ARGS, who typed it in TS3BOT_USER_NAME (and TS3BOT_USER_UID). What this prints
# goes back to them - into the channel if they typed it there (!service public dice on opens it to everyone).
[ "$TS3BOT_TRIGGER" = "install" ] && exit 0      # its first run, right after the install: nothing to roll for
sides=6
case "$TS3BOT_ARGS" in ''|*[!0-9]*) ;; *) [ "$TS3BOT_ARGS" -ge 2 ] && [ "$TS3BOT_ARGS" -le 1000 ] && sides=$TS3BOT_ARGS ;; esac
echo "🎲 $TS3BOT_USER_NAME rolled [b]$(( RANDOM % sides + 1 ))[/b] (1–$sides)"
