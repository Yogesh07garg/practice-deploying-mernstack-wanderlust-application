# Use official Node image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose frontend dev port
EXPOSE 3000
EXPOSE 5173
# For Vite use this:
CMD ["npm", "run", "dev"]


