# Pokédex Rails API

A Ruby on Rails API that integrates with the PokeAPI to provide users with Pokémon data and allow them to manage their favorite Pokémon. This project demonstrates proficiency in building RESTful APIs, handling user authentication, and integrating external APIs.

Table of Contents
Features
Installation
Usage
API Endpoints
Technologies Used
Project Highlights
Features
Pokémon Data Integration: Fetch and display comprehensive Pokémon data using the PokeAPI.
User Authentication: Implement secure user registration and login with JWT token-based authentication.
Favorites Management: Allow users to add, view, and remove Pokémon from their list of favorites.
Installation
Prerequisites
Ruby (version >= 2.7.0)
Rails (version >= 6.0.0)
PostgreSQL (or another preferred database)
Setup
Clone the repository:

bash
Copy code
git clone https://github.com/your-username/pokemon-rails-api.git
cd pokemon-rails-api
Install dependencies:

bash
Copy code
bundle install
Set up the database:

bash
Copy code
rails db:create
rails db:migrate
(Optional) Seed the database:

bash
Copy code
rails db:seed
Start the Rails server:

bash
Copy code
rails s
Access the app at http://localhost:3000.

Usage
Interact with the API using tools like Postman or integrate it with a front-end application.

Authentication
This API uses JWT for authentication. Include the token in the Authorization header as a Bearer Token for protected routes.
API Endpoints
User Authentication
POST /signup - Register a new user.
POST /login - Log in and receive a JWT token.
Pokémon Data
GET /pokemons - List all Pokémon.
GET /pokemons/
- Get details of a specific Pokémon.
Favorite Pokémon
POST /favorites - Add a Pokémon to favorites.
GET /favorites - List a user's favorite Pokémon.
DELETE /favorites/
- Remove a Pokémon from favorites.
Technologies Used
Ruby on Rails - Framework for building the backend.
PostgreSQL - Database management.
JWT - Token-based authentication.
PokeAPI - External API for Pokémon data.
Project Highlights
RESTful API Design: Utilized Rails to create a well-structured API with endpoints for user management and Pokémon data.
Secure Authentication: Implemented JWT for secure user login and session management.
Integration with External APIs: Successfully integrated with the PokeAPI to fetch and manage Pokémon data.
Database Management: Used PostgreSQL for reliable and efficient data storage and retrieval.
