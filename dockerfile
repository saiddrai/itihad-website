FROM node:16

ENV NODE_ENV production

# Create app directory
WORKDIR /app
COPY package*.json ./

COPY . .

# Install app dependencies
RUN npm i

# Bundle app source
RUN npm run strapi build

# Expose port 1337
EXPOSE 1337

# Start app
CMD ["npm", "start"]