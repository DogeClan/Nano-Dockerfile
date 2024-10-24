FROM alpine:latest

RUN apt-get update && apt-get install -y \
    git \
    npm

RUN git clone https://github.com/titaniumnetwork-dev/nano.git /nano-app

WORKDIR /nano-app

RUN npm i -g pnpm

RUN pnpm install && pnpm run build

EXPOSE 3000

CMD ["pnpm", "start"]
    
