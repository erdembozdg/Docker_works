FROM node:8.17.0-alpine3.11
WORKDIR /usr/app

COPY ./package.json ./
RUN npm install && npm cache clean --force && apk add --update curl
COPY ./ ./

# Default command
CMD ["npm", "start"]

#ENTRYPOINT ["npm", "start"]
