FROM node:12.0.0-alpine

WORKDIR '/app'

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm run format && npm run build

EXPOSE 3000

CMD node 'dist/main'
