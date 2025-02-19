# Multiplayer CYOA backend
A Choose Your Own Adventure (CYOA) platform built with Spring Boot, allowing users to create, publish, and play interactive stories together.

## Prerequisites

- Docker & Docker Compose
- Make

## Project Structure

This project follows Domain-Driven Design (DDD) principles with a clear separation of concerns:

```
src/main/java/multiplayer_CYOA/
├── domain/          # Domain layer with business logic
├── application/     # Application layer with use cases
└── infrastructure/  # Infrastructure layer with technical implementations
```

The domain layer is divided into three bounded contexts:
- **Library**: Gamebook creation and publication
- **Engine**: Playing game book management

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/lgillard/multiplayer-CYOA-backend.git
```

2. Build and start all services:
```bash
make build
```

This will:
- Start PostgreSQL database
- Run database migrations automatically
- Start the application

Those services will be available:
- REST API endpoints are available at `http://localhost:8080/api`
- WebSocket endpoints are available at `ws://localhost:8080/ws`
- PostgreSQL is accessible at `jdbc:postgresql://localhost:5432/cyoa`

## Available Commands

### Service Management
```bash
make help          # Show all available commands
make start         # Start all services
make stop          # Stop all services
make restart       # Restart all services
make build         # Rebuild and start services
make clean         # Remove all containers and volumes
```

### Logs and Monitoring
```bash
make logs          # Show all logs
make logs-app      # Show only application logs
```

### Database Operations
```bash
make psql          # Connect to PostgreSQL CLI
make migrate       # Run database migrations
make status        # Check migration status
```

### Development
```bash
make test          # Run tests
```

## Database Management

Once connected to the database using `make psql`, you can use these PostgreSQL commands:
```sql
\dt               -- List all tables
\d table_name     -- Describe table
\l                -- List databases
\q                -- Quit
```

## Troubleshooting

1. If the application fails to start:
```bash
make logs-app     # Check application logs
```

2. If database connection fails:
```bash
make restart      # Restart all services
```

3. For a complete reset:
```bash
make clean        # Remove everything
make build        # Fresh rebuild
```

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Run tests:
```bash
make test
```
4. Submit your pull request