#!/bin/bash

STEAM_USER="$(cat $PATH_STEAM_USER)"
STEAM_PASS="$(cat $PATH_STEAM_PASS)"
AUTH_STR="+login $STEAM_USER $STEAM_PASS"
$TOKEN_FILE="$PATH_STEAM_TOKEN"
if [[ -f $TOKEN_FILE ]];then
    echo "$TOKEN_FILE exists"
    STEAM_TOKEN="$(cat $PATH_STEAM_TOKEN)"
    AUTH_STR="+sv_setsteamaccount $STEAM_TOKEN"
else
    echo "$TOKEN_FILE doesn't exist useing username and password"
fi