# Specify a base image
FROM node:alpine
# set workdir
WORKDIR /usr/app
# Copy package.json
COPY ./package.json ./
# Install some dependencies
RUN npm install
# copy entire proj
COPY ./ ./
# Defaul command
CMD ["npm", "start"]