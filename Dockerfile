# Use Node.js LTS base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (change if your app uses something else)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
