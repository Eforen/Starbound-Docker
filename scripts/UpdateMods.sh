#!/bin/bash
echo ""
echo "Updating Starbound Mods..."
echo ""
echo "Downloading the mods: $MODS."
GAME_MODS_STR=""
IFS=',' ;for i in "$MODS"; do GAME_MODS_STR="$GAME_MODS_STR +workshop_download_item 211820 $i"; done

steamcmd \
    +@NoPromptForPassword 1 \
    +login $STEAM_USER $STEAM_PASS \
    +force_install_dir $STARBOUND_DATAFOLDER \
    $GAME_MODS_STR \
    +quit
echo "Finished updating Starbound Mods..."
