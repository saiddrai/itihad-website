FROM node:14

ENV NODE_ENV production

# Create app directory
WORKDIR /app
COPY package*.json ./


COPY . .
# Install app dependencies
RUN npm i

# Bundle app source
RUN npm run build


EXPOSE 1337

CMD [ "npm", "start" ]
