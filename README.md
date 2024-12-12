# supabase-cli-docker

This repository provides a Docker image for the Supabase CLI, allowing you to easily use the Supabase CLI in your development and CI/CD workflows.

## Table of Contents

- [Usage](#usage)
  - [As a Base Image](#as-a-base-image)
  - [In CI Pipelines](#in-ci-pipelines)
- [Releases](#releases)
- [Contributing](#contributing)
- [License](#license)

## Usage

### As a Base Image

You can use this Docker image as a base image for your own Dockerfiles. This allows you to include the Supabase CLI in your custom Docker images.

```Dockerfile
FROM ghcr.io/thurahtetaung/supabase-cli-docker:latest

# Set working directory
WORKDIR /app

# Copy your application code
COPY . .

# Run your application
CMD ["your-command"]
```

### In CI Pipelines

You can also use this Docker image in your CI pipelines to run the Supabase CLI commands. Here is an example of how to use this Docker image in a GitLab CI pipeline:

```yaml
stages:
  - supabase-migrate

supabase-cli-job:
  stage: supabase-migrate
  image: ghcr.io/thurahtetaung/supabase-cli-docker:latest
  script:
    - supabase migrate up
```

## Releases

Releases of this Docker image are automated. The GitHub Actions workflow checks for new releases of the Supabase CLI daily and creates a pull request to update the version if a new release is found. Once the pull request is merged, another workflow builds and pushes the updated Docker image to the GitHub Container Registry.

## Contributing

Contributions are welcome! If you have any improvements or suggestions, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
