FROM node:14.17.4

ENV NODE_ENV=production

WORKDIR /fancy_vue

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "npm","run", "serve" ]