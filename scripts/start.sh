STEAM_USER="$(cat /var/opt/steam_user)"
STEAM_PASS="$(cat /var/opt/steam_pass)"

. UpdateSB.sh
. UpdateMods.sh
. CleanOldMods.sh
. LinkMods.sh
. StartSB.sh