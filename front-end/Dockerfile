# syntax=docker/dockerfile:1
ARG NODE_VERSION=20.9.0

# Use node image for base image for all stages.
FROM node:${NODE_VERSION}-alpine as base
# Set working directory for all build stages.
WORKDIR /usr/src/app

################################################################################
# Create a stage for installing production dependencies.
FROM base as deps
# Copy package.json and package-lock.json
COPY package*.json ./
# Install production dependencies
RUN npm ci --only=production

################################################################################
# Create a stage for building the application.
FROM base as build
# Copy package.json, package-lock.json, and the rest of the source files into the image.
COPY . .
# Install all dependencies including 'devDependencies'
RUN npm install
# Run the build script.
RUN npm run build

################################################################################
# Create a new stage to run the application with minimal runtime dependencies
# where the necessary files are copied from the build stage.
FROM base as final
# Use production node environment by default.
ENV NODE_ENV production
# Install 'serve' to serve the application.
RUN npm install -g serve
# Run the application as a non-root user.
USER node
# Copy the production dependencies from the deps stage.
COPY --from=deps /usr/src/app/node_modules ./node_modules
# Copy the built application from the build stage.
COPY --from=build /usr/src/app/build ./build

# Expose the port that the application listens on.
EXPOSE 3000

# Run the application.
CMD ["serve", "-s", "build", "-l", "3000"]
