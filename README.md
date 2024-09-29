# Build Your Nginx Container using Terraform

This Terraform project provisions a Docker container running NGINX using the Docker provider. The container exposes NGINX on port 8080 of your host machine.

## Requirements

- **Terraform**: Version 0.12 or higher
- **Docker**: Docker Engine must be installed and running on your machine
- **Docker Provider**: [kreuzwerker/docker](https://registry.terraform.io/providers/kreuzwerker/docker/latest)

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/viju21/Nginx_with_Tf.git
   cd your-repository
   ```

2. **Install Terraform**

   Download and install Terraform from the official [Terraform website](https://www.terraform.io/downloads.html).

3. **Install Docker**

   Ensure Docker is installed and running on your machine. You can download Docker from the official [Docker website](https://www.docker.com/products/docker-desktop).

## Usage

1. **Initialize the Project**

   Initialize Terraform to download the Docker provider:

   ```bash
   terraform init
   ```

2. **Apply the Configuration**

   Run the following command to create the NGINX container:

   ```bash
   terraform apply
   ```

   You'll be prompted to confirm the changes. Type `yes` to proceed. This will:
   - Pull the latest NGINX image from Docker Hub.
   - Start a Docker container named "practice" exposing port 8080 on your local machine.

3. **Access NGINX**

   After successful deployment, you can access the NGINX web server by opening a browser and navigating to:

   ```bash
   http://localhost:8080
   ```

## Outputs

- **docker_container**: This output displays the properties of the provisioned Docker container, including its name, ID, and image.

## Cleanup

To remove the Docker container and all resources provisioned by Terraform, run:

```bash
terraform destroy
```

Confirm the prompt by typing `yes` to remove all resources.

## File Overview

- `main.tf`: Contains the Terraform configuration for provisioning the Docker NGINX container.

## Troubleshooting

- **Docker Not Running**: Ensure that Docker is running on your machine. You can check the status of Docker using:

   ```bash
   docker ps
   ```

- **Port Conflicts**: If port 8080 is already in use, modify the `external` port in the configuration under the `docker_container` resource.

