# Base image for Supabase API (usually Node.js + PostgreSQL)
FROM node:16-bullseye

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port that the API will listen on
EXPOSE 8000

# Start the Supabase server
CMD ["npm", "run", "start"]
