FROM node:lts-alpine

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

EXPOSE 4001 8000

CMD ["npm", "run", "dev"]
