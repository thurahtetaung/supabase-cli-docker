FROM alpine:3.21
# Set build argument for Supabase version
ARG SUPABASE_CLI_VERSION=latest

# Install dependencies and Supabase CLI
RUN apk add --no-cache bash wget && \
    VERSION=${SUPABASE_CLI_VERSION#v} && \
    wget -O /supabase-cli.apk "https://github.com/supabase/cli/releases/download/${SUPABASE_CLI_VERSION}/supabase_${VERSION}_linux_amd64.apk" && \
    apk add --allow-untrusted /supabase-cli.apk && \
    rm /supabase-cli.apk

# Set working directory
WORKDIR /app

# Define the default command for the container
CMD ["supabase", "--help"]