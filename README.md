# multiplayer-CYOA-backend
A Choose Your Own Adventure (CYOA) platform built with Spring Boot, allowing users to create, publish, and play interactive stories together.

## Project Structure

This project follows Domain-Driven Design (DDD) principles with a clear separation of concerns:

```
src/main/java/multiplayer_CYOA/
├── domain/          # Domain layer with business logic
├── application/     # Application layer with use cases
└── infrastructure/  # Infrastructure layer with technical implementations
```

The domain layer is divided into three bounded contexts:
- **Library**: Story creation and publication
- **Engine**: Playing game book management

## Prerequisites

- Java 17 or higher
- Docker and Docker Compose
- Maven (or use included mvnw wrapper)

## Installation

1. Clone the repository:
```bash
git clone [repository-url]
```

2. Build the project:
```bash
./mvnw clean package
```

## Running the Application

1. Start the application using Docker Compose:
```bash
docker-compose up --build
```

This will start:
- PostgreSQL database on port 5432
- Application on port 8080

2. To stop the application:
```bash
docker-compose down
```

## Development

- REST API endpoints are available at `http://localhost:8080/api`
- WebSocket endpoints are available at `ws://localhost:8080/ws`
- PostgreSQL is accessible at `jdbc:postgresql://localhost:5432/cyoa`