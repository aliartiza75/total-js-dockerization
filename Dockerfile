FROM node:10

# app directory for application containing code files
WORKDIR /usr/src/sampleApp

# bundling app sources
COPY . .

RUN npm install

# exposing ports
EXPOSE 8000

# running application
CMD mv config.example config && mv release.js.example release.js &&  node release.js

