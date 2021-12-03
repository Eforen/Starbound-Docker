#!/bin/bash
echo ""
echo "Updating Starbound..."
echo ""
sleep 1
steamcmd \
    +@NoPromptForPassword 1 \
    +login $STEAM_USER $STEAM_PASS \
    +force_install_dir $STARBOUND_DATAFOLDER \
    +app_update 211820 \
    +quit
echo "Updated Starbound..."