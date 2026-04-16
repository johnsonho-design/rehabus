# Dockerfile

# Stage 1: Build
FROM node:16 AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Build the application
RUN npm run build


# Stage 2: Run
FROM node:16 AS production

# Set working directory
WORKDIR /app

# Copy only the build artifacts from the previous stage
COPY --from=build /app/dist ./dist

# Install only production dependencies
COPY package*.json ./
RUN npm install --only=production

# Start the application
CMD ["node", "dist/index.js"]