# MyApi
# Docker & CI/CD Learning

A hands-on learning project for practicing **Docker, containerization, and CI/CD** with **.NET**.

## 🎯 Purpose

The purpose of this project is to learn and practice:

* Docker
* Dockerfile
* Docker images and containers
* Multi-stage Docker builds
* Docker Compose
* .NET application containerization
* Git and GitHub
* GitHub Actions
* CI/CD pipelines
* Environment configuration
* Container deployment concepts

## 🛠️ Technologies

* C#
* .NET
* ASP.NET Core
* Docker
* Docker Compose
* Git
* GitHub
* GitHub Actions

## 🐳 Docker

The application is containerized using a Dockerfile.

### Build the Docker image

```bash
docker build -t docker-cicd-learning .
```

### Run the container

```bash
docker run -p 8080:8080 docker-cicd-learning
```

The application can then be accessed through:

```text
http://localhost:8080
```

> The port may be different depending on the application configuration.

## 🔄 CI/CD

This project will gradually be extended with a CI/CD pipeline using **GitHub Actions**.

The pipeline will eventually include:

1. Checkout source code
2. Restore dependencies
3. Build the .NET application
4. Run tests
5. Build the Docker image
6. Push the Docker image to a container registry
7. Deploy the application

## 📚 Learning Progress

* [x] Create .NET application
* [x] Create Dockerfile
* [x] Build Docker image
* [x] Run application in Docker
* [ ] Docker Compose
* [ ] GitHub Actions
* [ ] CI pipeline
* [ ] CD pipeline
* [ ] Docker Registry
* [ ] Automated deployment

## 📌 Useful Docker Commands

```bash
docker images
docker ps
docker ps -a
docker build -t docker-cicd-learning .
docker run -p 8080:8080 docker-cicd-learning
docker stop <container-id>
docker rm <container-id>
docker rmi <image-id>
```

## 🚀 Goal

The final goal is to have a complete learning project demonstrating a basic **Docker + CI/CD workflow**, from source code to automated container build and deployment.
