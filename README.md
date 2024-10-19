# 🚀 RabbitMQ in Docker

## 📖 Overview
This project sets up a RabbitMQ instance using Docker and Docker Compose. It includes a `Makefile` for managing the Docker setup, a `docker-compose.yml` file for defining the services, a `Dockerfile` for building the RabbitMQ image, and an example `.env` file for# 🚀 RabbitMQ in Docker

## 📖 Overview
This project sets up a RabbitMQ instance using Docker and Docker Compose. It includes a `Makefile` for managing the Docker setup, a `docker-compose.yml` file for defining the services, a `Dockerfile` for building the RabbitMQ image, and an example `.env` file for environment variables.

## Prerequisites 📋

- Docker 🐳
- Docker Compose 🛠️

## Setup ⚙️

1. Clone the repository:
    ```sh
    git clone git@github.com:PepeCodeHub/RabbitMQ-docker.git
    cd RabbitMQ-docker
    ```

2. Copy the `.env.example` file to `.env` and fill in the required environment variables:
    ```sh
    cp .env.example .env
    ```

## Makefile Commands 📝

- `make build`: Build the Docker image and run the containers. 🚀
- `make up`: Start the containers without rebuilding. 🔄
- `make down`: Stop and remove the containers. 🛑
- `make logs`: View logs from the containers. 📜
- `make ps`: Show running containers. 📋
- `make clean`: Clean up unused Docker resources. 🧹
- `make publish`: Tag and push the Docker image to Docker Hub. 📤
- `make help`: Display available commands. ❓

## Docker Compose 🐙

The `docker-compose.yml` file defines a single service:

- `rabbitmq`: The RabbitMQ service. 🐇

## Dockerfile 📦

The `Dockerfile` builds a custom RabbitMQ image with the following stages:
- **Build stage**: Copies the initialization script.
- **Final stage**: Sets up the RabbitMQ environment, copies the initialization script, and starts RabbitMQ. 🐇

## Environment Variables 🌐

The `.env` file should contain the following variables:

- `RABBITMQ_DEFAULT_USER`: The username for the RabbitMQ default user. 👤
- `RABBITMQ_DEFAULT_PASS`: The password for the RabbitMQ default user. 🔑
- `RABBITMQ_USER`: The username for the RabbitMQ user. 👤
- `RABBITMQ_PASSWORD`: The password for the RabbitMQ user. 🔑
- `DOCKER_USERNAME`: Your Docker Hub username. 🧑‍💻
- `IMAGE_NAME`: The name of the Docker image. 🏷️
- `TAG`: The tag for the Docker image. 🏷️

## Usage 🚀

1. Build and start the containers:
    ```sh
    make build
    ```

2. Start the containers without rebuilding:
    ```sh
    make up
    ```

3. Stop and remove the containers:
    ```sh
    make down
    ```

4. View logs from the containers:
    ```sh
    make logs
    ```

5. Show running containers:
    ```sh
    make ps
    ```

6. Clean up unused Docker resources:
    ```sh
    make clean
    ```

7. Tag and push the Docker image to Docker Hub:
    ```sh
    make publish
    ```

8. Display available commands:
    ```sh
    make help
    ```

## Docker Hub Link 🐳

The Docker image is available on Docker Hub: [f3an/rabbitmq-docker](https://hub.docker.com/repository/docker/f3an/rabbitmq-docker/general)

## Github Registry Link 🐈‍⬛

The Docker image is available on GitHub: [f3an/rabbitmq-docker](https://github.com/PepeCodeHub/RabbitMQ-docker/pkgs/container/rabbitmq-docker)

RabbitMQ in Docker 🐇 environment variables.

## Prerequisites 📋

- Docker 🐳
- Docker Compose 🛠️

## Setup ⚙️

1. Clone the repository:
    ```sh
    git clone git@github.com:PepeCodeHub/RabbitMQ-docker.git
    cd RabbitMQ-docker
    ```

2. Copy the `.env.example` file to `.env` and fill in the required environment variables:
    ```sh
    cp .env.example .env
    ```

## Makefile Commands 📝

- `make build`: Build the Docker image and run the containers. 🚀
- `make up`: Start the containers without rebuilding. 🔄
- `make down`: Stop and remove the containers. 🛑
- `make logs`: View logs from the containers. 📜
- `make ps`: Show running containers. 📋
- `make clean`: Clean up unused Docker resources. 🧹
- `make publish`: Tag and push the Docker image to Docker Hub. 📤
- `make help`: Display available commands. ❓

## Docker Compose 🐙

The `docker-compose.yml` file defines a single service:

- `rabbitmq`: The RabbitMQ service. 🐇

## Dockerfile 📦

The `Dockerfile` builds a custom RabbitMQ image with the following stages:
- **Build stage**: Copies the initialization script.
- **Final stage**: Sets up the RabbitMQ environment, copies the initialization script, and starts RabbitMQ. 🐇

## Environment Variables 🌐

The `.env` file should contain the following variables:

- `RABBITMQ_DEFAULT_USER`: The username for the RabbitMQ default user. 👤
- `RABBITMQ_DEFAULT_PASS`: The password for the RabbitMQ default user. 🔑
- `RABBITMQ_USER`: The username for the RabbitMQ user. 👤
- `RABBITMQ_PASSWORD`: The password for the RabbitMQ user. 🔑
- `DOCKER_USERNAME`: Your Docker Hub username. 🧑‍💻
- `IMAGE_NAME`: The name of the Docker image. 🏷️
- `TAG`: The tag for the Docker image. 🏷️

## Usage 🚀

1. Build and start the containers:
    ```sh
    make build
    ```

2. Start the containers without rebuilding:
    ```sh
    make up
    ```

3. Stop and remove the containers:
    ```sh
    make down
    ```

4. View logs from the containers:
    ```sh
    make logs
    ```

5. Show running containers:
    ```sh
    make ps
    ```

6. Clean up unused Docker resources:
    ```sh
    make clean
    ```

7. Tag and push the Docker image to Docker Hub:
    ```sh
    make publish
    ```

8. Display available commands:
    ```sh
    make help
    ```

## Docker Hub Link 🐳

The Docker image is available on Docker Hub: [f3an/rabbitmq-docker](https://hub.docker.com/repository/docker/f3an/rabbitmq-docker/general)

## Github Registry Link 🐈‍⬛

The Docker image is available on GitHub: [f3an/rabbitmq-docker](https://github.com/PepeCodeHub/RabbitMQ-docker/pkgs/container/rabbitmq-docker)

RabbitMQ in Docker 🐇
