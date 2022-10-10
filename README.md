solo quedan comandos help y run

....................
Execute host command from container
https://stackoverflow.com/questions/32163955/how-to-run-shell-script-on-host-from-docker-container

Docker sh bot
https://github.com/yozel/shell-bot
https://github.com/botgram/shell-bot

....
crear pipe con rw --> /hostpipe/commandpipe
script commandpipe.sh

...
docker build -t baroka/shell-bot .
docker-compose -f new_compose.yaml up -d

....
TODO
 - borrar new_compose.yaml
 - habilitar script inicio

 - devolver salida comando
 - new readme -> github, docker


