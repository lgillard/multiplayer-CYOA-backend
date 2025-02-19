# CYOA Engine Domain

The Engine domain manages the execution and orchestration of CYOA Adventures.

## Domain Responsibilities

- Session Management
    - Create and manage game sessions
    - Handle player joining/leaving
    - Synchronize player progress

- Game State Management
    - Track current story position
    - Manage player choices
    - Manage heroes creation
    - Handle concurrent player actions

- Multiplayer Features
    - Real-time player synchronization
    - Group decision making
    - Player interaction

## Key Concepts

- **Gamebook**: The main entity representing a CYOA book
- **Adventure**: Party game or story of a Gamebook 
- **PlayerChoice**: Player decision to take a Gamebook Path (affects their game progression)
- **Section**: A single node in the Gamebook with text and often Choice
- **Achievement**: Ultimate adventure section resulting in a success
- **FatalTrap**: Ultimate adventure section resulting in a failure
- **Resource**: Any collectible or acquired element throughout an Adventure
- **Hero**: Character of an adventure
- **Player**: User playing an adventure