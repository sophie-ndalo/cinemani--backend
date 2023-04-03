# Introduction
The cinemania movie streaming app is built using the Model-View-Controller (MVC) architecture pattern. The application uses a MySQL database to store data about movies, users, and their interactions. The backend consists of several components, including:

Models: These represent the data and business logic of the application. There are several models in the movie streaming app, including User, Movie, and Review.

Controllers: These handle incoming requests from the client and manage the interaction between the models and views. There are several controllers in the app, including UsersController, MoviesController, and ReviewsController.

Views: These are responsible for presenting data to the user in a readable format. In the movie streaming app, views are built using ERB (Embedded Ruby) templates.

Routes: These map incoming requests to the appropriate controller actions.

# Endpoints
The following endpoints are available in the movie streaming app:

Users
GET /api/users: Returns a list of all users.
GET /api/users/:id: Returns a specific user.
POST /api/users: Creates a new user.
PUT /api/users/:id: Updates a specific user.
DELETE /api/users/:id: Deletes a specific user.
Movies
GET /api/movies: Returns a list of all movies.
GET /api/movies/:id: Returns a specific movie.
POST /api/movies: Creates a new movie.
PUT /api/movies/:id: Updates a specific movie.
DELETE /api/movies/:id: Deletes a specific movie.
Reviews
GET /api/movies/:movie_id/reviews: Returns a list of all reviews for a specific movie.
GET /api/movies/:movie_id/reviews/:id: Returns a specific review for a specific movie.
POST /api/movies/:movie_id/reviews: Creates a new review for a specific movie.
PUT /api/movies/:movie_id/reviews/:id: Updates a specific review for a specific movie.
DELETE /api/movies/:movie_id/reviews/:id: Deletes a specific review for a specific movie.

# Controllers
The following controllers are used in the movie streaming app:

UsersController
The UsersController handles requests related to users. It contains the following actions:
index: Returns a list of all users.
show: Returns a specific user.
create: Creates a new user.
update: Updates a specific user.
destroy: Deletes a specific user.

MoviesController
The MoviesController handles requests related to movies. It contains the following actions:
index: Returns a list of all movies.
show: Returns a specific movie.
create: Creates a new movie.
update: Updates a specific movie.
destroy: Deletes a specific movie.

# Routes
The following routes are used in the movie streaming app:

# Technology stack
Ruby on rails

# contributors
Sophia Ndalo

# licence
cinemania-backend
