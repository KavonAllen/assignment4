
# Use the official Node.js 16 image as the base environment
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package files into the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the remaining application files into the container
COPY . .

# Make port 3000 available outside the container
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
