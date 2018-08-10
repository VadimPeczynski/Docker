#### STAGE1
FROM node:latest as node
LABEL author="Vadim"
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
RUN npm run build -- --prod

#### STAGE2
FROM nginx:alpine
COPY --from=node /app/dist/Angular6 /usr/share/nginx/html
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf