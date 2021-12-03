#!/bin/bash
echo ""
echo "Cleaning out previous mods.."
echo ""
sleep 1
# Remove the symlinks
rm /opt/starbound/mods/*.pak
# rmdir because when you unsubscribe from mods SteamCMD leaves behind an empty mod folder
rmdir --ignore-fail-on-non-empty /opt/starbound/steamapps/workshop/content/211820/*
echo ""
echo "Cleaned out previous mods.."