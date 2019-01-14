FROM node:lts

LABEL maintainer="alexperezdev@gmail.com"

RUN mkdir -p /app

WORKDIR /app

ADD package.json /app/

RUN npm i --production
RUN npm run build

COPY . /app/

EXPOSE 80 443

CMD ["npm", "start"]