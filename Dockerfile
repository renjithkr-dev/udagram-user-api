FROM node:10.23.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN ["npm","install"]
COPY . .
RUN npm run build
EXPOSE 8080/tcp
CMD ["node","./www/server.js"]