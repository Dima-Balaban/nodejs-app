FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g jest

# Expose the port the app runs on
EXPOSE 80

CMD [ "npm", "start" ]