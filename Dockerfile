# Start with the official Node.js alpine image
FROM node:22-alpine

# Set build argument for Supabase version
ARG SUPABASE_CLI_VERSION=latest

# Install dependencies and Supabase CLI globally using npm
RUN apk add --no-cache bash && \
    npm install -g supabase@$SUPABASE_CLI_VERSION

# Set working directory
WORKDIR /app

# Define the default command for the container
CMD ["supabase", "--help"]