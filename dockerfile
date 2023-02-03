FROM node:14

# Create app directory

WORKDIR /app

# Install app dependencies

COPY package*.json ./

RUN npm install

# Bundle app source

COPY . .

EXPOSE 1337

CMD [ "npm", "run", "strapi", "develop" ]
