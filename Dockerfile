FROM node:alpine

RUN apk add --no-cache libc6-compat

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

WORKDIR /home/nextjs/app

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

RUN chown -R nextjs:nodejs /home/nextjs

USER nextjs

COPY package.json .
COPY package-lock.json .

RUN npm install --no-optional
RUN npx next telemetry disable

COPY . .

RUN npm run build

CMD [ "npm", "start" ]
