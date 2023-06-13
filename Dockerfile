# Use a base Node.js image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Run tests
RUN npm test

# Specify the command to start your application
CMD [ "npm", "start" ]
