# NextJS and Docker

- node: v16.6.2
- npm: 7.20.3
- rootfs: Alpine 3.14
- docker: version 20.10.8, build 3967b7d

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
