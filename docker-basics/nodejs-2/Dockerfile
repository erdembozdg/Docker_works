FROM node:8.17.0-alpine3.11

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .

# Default command
CMD ["npm", "start"]