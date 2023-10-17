# Use the official Node.js base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install
COPY /build /app/build
# Copy the rest of the application files to the container
COPY . .

# Expose the port your Node.js app will run on (replace 3000 with your desired port)
EXPOSE 3000

# Command to run your Node.js application when the container starts
CMD ["node", "app.js"]
