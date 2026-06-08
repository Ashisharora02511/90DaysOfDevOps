# Day 36 – Docker Project: Dockerize a Full Application

## Objective

The goal of Day 36 was to Dockerize a complete Spring Boot application and run it with PostgreSQL and PgAdmin using Docker Compose.

This project helped me understand how real-world applications are packaged, deployed, and managed using Docker.

---

# Application Chosen

I selected my Spring Boot Uber Application.

### Why This Application?

* Real Java Spring Boot application
* Uses PostgreSQL/PostGIS database
* Suitable for learning Docker Compose
* Demonstrates multi-container architecture
* Similar to production deployments

Project Components:

* Spring Boot Application
* PostgreSQL with PostGIS
* PgAdmin
* Docker Compose
* Docker Hub

---

# Task 1: Dockerize the Application

Created a Dockerfile for the Spring Boot application.

Features:

* Multi-stage build
* Maven build stage
* Optimized runtime image
* Non-root user
* Production-ready structure

Dockerfile Location:

```text
Project/uberApp/Dockerfile
```

---

# Task 2: Dockerfile Improvements

Implemented several Docker best practices.

## Multi-Stage Build

Used Maven image to build the application and copied only the final JAR into the runtime image.

Benefits:

* Smaller image size
* Cleaner runtime image
* Faster deployments

## Non-Root User

Created a dedicated application user and avoided running the application as root.

Benefits:

* Better security
* Production-ready configuration

## Docker Ignore

Created a `.dockerignore` file to exclude unnecessary files:

```text
target/
.git/
.idea/
.vscode/
*.log
*.iml
```

Benefits:

* Faster build process
* Smaller build context
* Cleaner Docker images

---

# Task 3: Docker Compose Setup

Created a Docker Compose configuration containing:

## Spring Boot Application

* Built using Dockerfile
* Exposed on port 8080

## PostgreSQL + PostGIS

* Database container
* Persistent storage using Docker Volumes

## PgAdmin

* Database administration UI
* Accessible through browser

## Additional Features

### Health Checks

Configured PostgreSQL health checks so the application waits until the database is ready.

### Custom Network

Created a dedicated Docker network:

```text
uber-network
```

### Environment Variables

Used environment variables for database configuration.

Docker Compose Location:

```text
Project/uberApp/docker-compose.yml
```

---

# Challenges Faced

## Issue 1: Database Connection Failure

Initial configuration:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/uber_db
```

Problem:

Inside Docker, localhost refers to the current container itself.

Solution:

```properties
spring.datasource.url=jdbc:postgresql://postgres:5432/uber_db
```

Used the Docker Compose service name as the hostname.

---

## Issue 2: Authentication Failure

Error:

```text
The server requested SCRAM-based authentication, but no password was provided.
```

Cause:

Environment variables were not configured correctly.

Solution:

Configured database credentials using environment variables and referenced them from Spring Boot.

---

## Issue 3: Docker Networking

Learned that:

```text
localhost = current container
```

and

```text
postgres = postgres container
```

Docker Compose automatically creates DNS entries for service names.

---

# Task 4: Push Image to Docker Hub

Successfully completed:

* Docker Login
* Image Tagging
* Image Push to Docker Hub

Screenshots:

![Docker Tag](ScreenShots/dockertag.png)

![Docker Push](ScreenShots/Dockerhubpush.png)

Docker Hub Repository:

```text
https://hub.docker.com/r/<your-dockerhub-username>/<repository-name>
```

---

# Task 5: Verify Complete Flow

Performed a fresh deployment test:

1. Removed existing containers
2. Removed local images
3. Pulled image from Docker Hub
4. Started application using Docker Compose

Result:

* Application started successfully
* PostgreSQL connected successfully
* Docker networking worked correctly
* Docker Hub image worked successfully

Application Screenshot:

![Application Working](ScreenShots/Appworking.png)

---

# Project Structure

```text
uberApp/
│
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── pom.xml
├── src/
└── target/
```

---

# Key Learnings

* Dockerfile creation
* Multi-stage builds
* Docker Compose
* Docker networking
* Docker volumes
* Health checks
* Environment variables
* PostgreSQL containerization
* Spring Boot containerization
* Docker Hub image management

---

# Final Result

Successfully Dockerized a Spring Boot application with PostgreSQL/PostGIS and PgAdmin using Docker Compose.

Implemented:

* Multi-container architecture
* Persistent database storage
* Docker networking
* Health checks
* Environment-based configuration
* Docker Hub image distribution

This project gave me hands-on experience with how applications are deployed and managed in real-world environments using Docker.
