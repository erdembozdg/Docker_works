FROM node:10-slim as prod
ENV NODE_ENV=production
COPY package*.js ./
RUN npm install --only=production && npm cache clean --force
COPY . .
CMD ["node", "index.js"]

FROM prod as dev
ENV NODE_ENV=development
RUN npm install --only=development
CMD ["node", "index.js"]

FROM dev as test
ENV NODE_ENV=development
# CMD ["npm", "test"]
RUN npm test

# docker build -t nodejs:dev --target dev . && docker run --init -p 3000:3000  nodejs:dev
# docker build -t nodejs:test --target test . && docker run --init nodejs:test
