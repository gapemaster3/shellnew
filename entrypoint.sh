#!/usr/bin/env bash
echo '------ Telegram bot -------'
set -euf -o pipefail
sed 's/123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11/'$BOT_TOKEN'/; s/34509246/'$CHAT_ID'/' config.example.json > config.json
exec $@