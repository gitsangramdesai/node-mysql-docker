FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
EXPOSE 3000/tcp
CMD [ "npm", "start" ]