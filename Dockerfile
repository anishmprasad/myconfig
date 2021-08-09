
# docker build --progress=plain -f ./Dockerfile . 

# docker exec -it 28a91698ebea5a79f7ed9b887a6960fdb359cf7f9df1b849fbef30374e008f12 /bin/sh

# docker run --publish 80:80 91baeee62323 





# a custom Docker Image with this Dockerfile for live classes
# FROM ubuntu:18.04

# build environment
FROM node:14 as build

# RUN mkdir /liveclasses
# A directory within the virtualized Docker environment
# Becomes more relevant when using Docker Compose later
WORKDIR /app

# ENV PATH /app/node_modules/.bin:$PATH

# Copies package.json to Docker environment
COPY package.json ./
# COPY package-lock.json ./

# Installs all node packages
RUN npm install

# Copies everything over to Docker environment
COPY . ./

# Runs the application
RUN npm run build:staging

# production environment
FROM nginx:stable-alpine

# Copies build to nginx html
COPY --from=build /app/build /usr/share/nginx/html

# Uses port which is used by the actual application
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
