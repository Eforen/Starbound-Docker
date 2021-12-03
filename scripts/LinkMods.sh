#!/bin/bash
echo "Llinking mod .pak files from SteamWorkshop..."
echo ""
sleep 1
for dir in $STARBOUND_DATAFOLDER/steamapps/workshop/content/211820/*/
do
 dir=${dir%*/}
 echo Sym-linking mod ${dir##*/} into the mods folder
 ln -r -s $STARBOUND_DATAFOLDER/steamapps/workshop/content/211820/${dir##*/}/contents.pak $STARBOUND_DATAFOLDER/mods/${dir##*/}.pak
done