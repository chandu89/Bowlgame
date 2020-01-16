# README

create a new game:

    POST /games

record a new ball played:

    POST /games/:game_id/new_ball

see game score with breakdown

    GET /games/:game_id

# Postman Interaction

<img width="722" alt="postman" src="https://user-images.githubusercontent.com/5196979/72496488-bcd6ff80-384f-11ea-9ede-88f16b8c19fc.png">

## Local Installation

create the database and set the schema:

    $ rails db:create db:migrate or db:setup

run the server:

    $ rails s

run the tests:

    $ rspec

## Coverage

100% coverage is there. Below is the Screenshot.
<img width="1652" alt="coverage" src="https://user-images.githubusercontent.com/5196979/72496497-c3657700-384f-11ea-9e23-66ce04d66fe2.png">

## About

This is a rails api to keep track of bowling games.

* We can play and create many games at a time.
* The Game which we are creating follows `UUID` convention. Below is the screenshot for `UUID` generation. 
    <img width="1420" alt="Game" src="https://user-images.githubusercontent.com/5196979/72496468-b052a700-384f-11ea-835b-7e2203600d71.png">
* We can show the game by using `#show method` any time.
