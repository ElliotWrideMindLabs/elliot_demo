# Use the Node.js Bookworm slim image
FROM node:bookworm-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
