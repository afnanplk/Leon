FROM node

RUN apt-get update && apt-get upgrade -y
COPY package.json .
RUN npm install
COPY . .
EXPOSE 8080

CMD ["node", "index.js"]
