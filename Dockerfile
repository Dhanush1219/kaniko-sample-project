# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json ./
RUN npm install

# Copy application files
COPY . .

# Expose port and start application
EXPOSE 3000
CMD ["node", "app.js"]

