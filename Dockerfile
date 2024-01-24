FROM node:alpine
RUN mkdir -p /home/yash/app
WORKDIR "/home/yash/app"
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm", "run", "start"]
