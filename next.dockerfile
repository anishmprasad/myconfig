# CMD

# docker build --progress=plain -f ./Dockerfile . 
# docker build -f ./Dockerfile .  

# containerID

# docker exec -it 28a91698ebea5a79f7ed9b887a6960fdb359cf7f9df1b849fbef30374e008f12 /bin/sh 
# docker exec -it 9535b9d0b723 /bin/sh

# docker run --publish 80:80 91baeee62323 

# To get images
# docker images 

# To get container
# docker ps

# stop a container
# docker container stop container-id

# remove a container
# docker container rm container-id

# remove a image
# docker rmi -f image-id (force mode)



# stage1 as builder
FROM node:10-alpine as builder

# copy the package.json to install dependencies
COPY package.json package-lock.json ./

# Install the dependencies and make the folder
RUN npm install && mkdir /build && mv ./node_modules ./build

WORKDIR /build

COPY . .

# Build the project and copy the files
RUN npm run build


FROM nginx:alpine

#!/bin/sh

COPY ./nginx/next.nginx.conf /etc/nginx/nginx.conf

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy from the stahg 1
COPY --from=builder /build/out /usr/share/nginx/html

EXPOSE 3000 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
