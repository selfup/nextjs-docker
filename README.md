# NextJS and Docker

- Node stable: v15.4.0
- npm version: 7.0.15
- Docker version 20.10.0, build 7287ab3

A note about [alpine and node](https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine) which explains:

```Dockerfile
RUN apk add --no-cache libc6-compat
```

Enjoy!

### Local

#### Dev

`npm i && npm run dev`

### Docker Compose

`docker-compose up --build`

This will build and run your container locally :rocket:

### Traditional Docker Route

Build your containers for deploys:

MacOS/Linux

`./scripts/prod.sh`

Windows

`./scripts/prod.bat`

Now that your container is built, you can test it locally:

`docker run -p 3000:3000 nextjs-docker`

Now deploy :rocket:
