FROM node:14-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 80

CMD ["npx", "serve", "-S", "build", "-l", "80"]

