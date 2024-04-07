# Use an official Node.js runtime as the base image
FROM node:16.20.2

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the React app runs on (if needed)
# EXPOSE 3000

# Command to run the React app
CMD ["npm", "start"]
