FROM node:16.6.2-alpine3.14

RUN apk add --no-cache libc6-compat

RUN npm i -g npm && npm -v

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

WORKDIR /home/nextjs/app

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

COPY package.json .
COPY package-lock.json .

RUN chown -R nextjs:nodejs /home/nextjs

USER nextjs

RUN npm install --no-optional
RUN npx browserslist@latest --update-db
RUN npx next telemetry disable

COPY . .

RUN npm run build

CMD [ "npm", "start" ]
