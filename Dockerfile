# Using lightweight base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy rest of the code
COPY . .

# Expose Port
EXPOSE 3000

# Start app
CMD ["node", "server.js"]