# Superheroes API

## Description

This is a RESTful API that allows you to get information about superheroes and their powers.

## Prerequisites

- Ruby 2.6.6+
- Rails 6.0.3
- SQLite 3

## Setup

1. Clone the repository and navigate to the file.

        git@github.com:ErnestH1/superheroes.git
2. To install the neccessary dependancies run 
    
        bundle install
3. To create the database run

        rails db:create
4. To run the database migrations.

        rails db:migrate 
5. To seed the database with sample data.

        rails db:seed
6. To start the server

        rails server


You can access the deployed link here  https://ernest-superheroes.onrender.com/
then add the neccessary endpoints as shown below

## Endpoints

| Endpoint           | HTTP Method | CRUD Method | Result                 |
|--------------------|-------------|-------------|-----------------------|
| /heroes            | GET         | READ        | Get all heroes        |
| /heroes/:id        | GET         | READ        | Get a single hero     |
| /powers            | GET         | READ        | Get all powers        |
| /powers/:id        | GET         | READ        | Get a single power    |
| /powers/:id        | PATCH       | UPDATE      | Update a power        |
| /hero_powers       | POST        | CREATE      | Create a hero power   |

## GET /heroes

Returns JSON data in the following format:


    [
    {
        "id": 1,
        "name": "Kamala Khan",
        "super_name": "Ms. Marvel"
    },
    {
        "id": 2,
        "name": "Doreen Green",
        "super_name": "Squirrel Girl"
    },
    {
        "id": 3,
        "name": "Gwen Stacy",
        "super_name": "Spider-Gwen"
    }
    ]


## GET /heroes/:id

If the Hero exists, returns JSON data in the following format:



    {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel",
    "powers": [
        {
        "id": 1,
        "name": "super strength",
        "description": "gives the wielder super-human strengths"
        },
        {
        "id": 2,
        "name": "flight",
        "description": "gives the wielder the ability to fly through the skies at supersonic speed"
        }
    ]
    }

If the Hero does not exist, returns the following JSON data, along with
the appropriate HTTP status code:



    {
    "error": "Hero not found"
    }

## GET /powers

Returns JSON data in the following format:



    [
    {
        "id": 1,
        "name": "super strength",
        "description": "gives the wielder super-human strengths"
    },
    {
        "id": 2,
        "name": "flight",
        "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
    ]

## GET /powers/:id

If the Power exists, returns JSON data in the following format:



    {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
    }


If the `Power` does not exist, returns the following JSON data, along with the appropriate HTTP status code:

    {
    "error": "Power not found"
    }




### PATCH /powers/:id

This route updates an existing `Power`. It accepts an object with the following JSON data, along with the appropriate HTTP status code:

        {
        "errors": ["validation errors"]
        }

## Conclusion

This API provides information on a collection of superheroes and their powers. It has several endpoints that allow for querying and modifying the data, such as getting a list of all heroes, retrieving a specific hero with their powers, and adding a new power to a hero.

The API is built using Ruby on Rails and uses a SQlite database. The code includes models for heroes, powers, and the join table hero_powers, as well as controllers and routes for each endpoint.

## License:

The code is released under the MIT License.

## Author:

This API was created by Alex Tanui.