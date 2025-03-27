FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i && npm run build
COPY . .
ENV PORT=3000
EXPOSE 3000
CMD [ "npm", "run", "start" ]