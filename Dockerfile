FROM registry.docker.ir/node:21-alpine
WORKDIR /app
COPY package*.json ./
RUN npm cache clean --force 
RUN npm install
RUN npm cache clean --force 
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
