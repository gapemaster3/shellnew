# build:
#  docker build -t baroka/shell-bot .

FROM node:14-slim

# Install packages
RUN apt-get update && apt-get -y install python build-essential

# Environment variables
ENV BOT_TOKEN=""
ENV CHAT_ID=""

VOLUME /hostpipe
WORKDIR /work

# Copy entrypoint script and files
COPY package.json package-lock.json config.example.json ./
COPY entrypoint.sh server.js ./
COPY lib ./lib
RUN npm install
RUN chmod +x entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["./entrypoint.sh"]
CMD ["node", "server"]