# CYOA Library Domain

The Library domain handles the author dedicated features like creation, editing, and publication of Choose Your Own Adventure stories.

## Domain Responsibilities

- Story Creation & Editing
    - Manage story content and structure
    - Handle story branching and choices
    - Support story versioning

- Publication Management
    - Story publication workflow
    - Access control and visibility settings
    - Version management

- Content Organization
    - Categorization and tagging
    - Search and discovery features
    - Author management

## Key Concepts

- **Gamebook**: The main entity representing a CYOA book
- **Section**: A single node in the Gamebook with text and often paths
- **Achievement**: Ultimate Gamebook section representing a success
- **FatalTrap**: Section representing a definitive failure, ending the adventure abruptly
- **Author**: User who creates stories
- **Resource**: Any collectible or acquired element throughout an adventure

---

# domain/engine/README.md
# CYOA Engine Domain

The Engine domain manages the execution and orchestration of multiplayer CYOA game sessions.

## Domain Responsibilities

- Session Management
    - Create and manage game sessions
    - Handle player joining/leaving
    - Synchronize player progress

- Game State Management
    - Track current story position
    - Manage player choices
    - Handle concurrent player actions

- Multiplayer Features
    - Real-time player synchronization
    - Group decision making
    - Player interaction

## Key Concepts

- **GameSession**: Active instance of a story being played
- **GameState**: Current state of the game (current page, players, choices made)
- **Player**: Active participant in a game session
- **Path**: Link between two Sections
- **Synchronization**: Ensuring all players are in sync during gameplay