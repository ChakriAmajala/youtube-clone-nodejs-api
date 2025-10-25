# Use Node.js 18 Alpine
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Set environment variable and expose port
ENV PORT=4000
EXPOSE 4000

# Start the app
CMD ["node", "app.js"]
