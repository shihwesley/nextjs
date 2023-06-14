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

# Build the Next.js application
RUN npm run build

# Expose the appropriate port (default is 3000 for Next.js)
EXPOSE 8080

# Start the Next.js production server
CMD ["npm", "run", "start"]
