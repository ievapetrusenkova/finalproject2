FROM node:10
LABEL name="node:10"
WORKDIR /usr/src/app 
COPY package.json ./
RUN npm install  
ADD  package-lock.json ./
RUN  npm ci --only=production
COPY . .
EXPOSE 8888
CMD ["node", "server.js"]