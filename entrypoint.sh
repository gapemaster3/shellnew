#!/usr/bin/env bash
# Entrypoint for shell-bot
echo '------ Telegram bot -------'

# Create pipes
PIPE="/hostpipe/commandpipe"
if [[ ! -p $PIPE ]]
then
	echo "create $PIPE"
    mkfifo $PIPE
fi
PIPE="/hostpipe/commandpipeout"
if [[ ! -p $PIPE ]]
then
	echo "create $PIPE"
    mkfifo $PIPE
fi

# Config bot
set -euf -o pipefail
sed 's/123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11/'$BOT_TOKEN'/; s/34509246/'$CHAT_ID'/' config.example.json > config.json
exec $@