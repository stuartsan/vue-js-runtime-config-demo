# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# get `jo`
RUN apk add jo --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

COPY inject-config.sh .

EXPOSE 80
CMD ["sh","-c", "./inject-config.sh && nginx -g 'daemon off;'"]
