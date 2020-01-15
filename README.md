# README

create a new game:

    POST /games

record a new ball played:

    POST /games/:game_id/new_ball

see game score with breakdown

    GET /games/:game_id

## Local Installation

create the database and set the schema:

    $ rails db:create db:migrate or db:setup

run the server:

    $ rails s

run the tests:
    $ rspec


## About

This is a rails api to keep track of bowling games.

* We can play and create many games at a time.
* The Game which we are creating follows `UUID` convention.
* We can show the game by using `#show method` any time.
