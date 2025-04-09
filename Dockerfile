# Use official Node.js runtime as base image

FROM node:18
 
# Set working directory inside container

WORKDIR /app
 
# Copy package.json and install dependencies

COPY package.json ./

RUN npm install
 
# Copy application files

COPY . .
 
# Expose port 3000

EXPOSE 3000
 
# Start the application

CMD ["npm", "start"]
 