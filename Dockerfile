# Use the official Node.js image as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]