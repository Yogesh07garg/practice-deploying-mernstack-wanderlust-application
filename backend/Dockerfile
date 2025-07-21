# Use official Node.js image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the backend code
COPY . .


# Expose the port your backend listens on (commonly 3001 or 5000)
EXPOSE 3001
EXPOSE 5000

# Start the app
CMD ["node", "server.js"]

