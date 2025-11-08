# Using Node 10 as the base image
FROM node:10

# Create app dir
WORKDIR /usr/src/lafs

# install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "server/server.js" ]