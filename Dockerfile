FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Define app port
ENV PORT=4000
EXPOSE 4000   # 👈 this tells Docker which port the container listens on

CMD ["node", "app.js"]
