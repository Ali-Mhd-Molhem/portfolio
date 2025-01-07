# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package.json package-lock.json* ./

# Install the dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Expose the port that the Next.js app will run on
EXPOSE 3008

# Set the environment variable to development
ENV NODE_ENV=development

# Start the Next.js development server
CMD ["npm", "run", "dev"]
