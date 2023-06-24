<div align="center">
    <br />
    <h1 style="font-weight: bold">Sample Restaurants API</h1>
</div>

<p align="center">
  <a href="#description">Project Description</a> •
  <a href="#setup">Project Setup</a> •
  <a href="#api-endpoints">API Endpoints</a> •
  <a href="#authors">Authors</a> •
  <a href="#license">License</a>
</p>


## Project Description
This is a simple API test for fun



## Project Setup
To run the project locally,

> Clone this repo `git clone https://github.com/mashm3ll0w/rest-api-demo.git`
>
> Move into the directory `cd rest-api-demo`
>
> Install project dependencies `bundle install`
>
> Create the databases and add some seed data `rails db:migrate db:seed`
>
> Start the server `rails server`
>
> Navigate on your browser to `http://localhost:3000/`
>

Note:
1. This project depends on `ruby 2.7.6`
2. For testing, `Postman` is recommended for it's ease of use (you can use curl if you are comfortable on the terminal)


## API Endpoints

`POST /signup`

---
Creates a new user.

Takes 4 parameters `name, email, password, password_confirmation`

`POST /login`

---
Logins a user

Takes 2 params `email, password`

`GET /restaurants`

---
View all restaurants

Uses `Authorization: Bearer <token>` for authorization.

Returns a list of all the restaurants

`GET /restaurants/:id`

---
View a single restaurant with the given `id`

Uses `Authorization: Bearer <token>` for authorization.

Returns the restaurant and a list of all its menus

`GET /restaurants/:id/menus`

---
View a single restaurant with the given `id`

Uses `Authorization: Bearer <token>` for authorization.

Returns a list of menus served at the restaurant


`GET /restaurants/:id/menus/:id`

---
View a single restaurant with the given `id` and the menu with the second `id`

Uses `Authorization: Bearer <token>` for authorization.

Returns a single menu item with the given `id`


`POST /restaurants/:id/menus/:id`

---
Order from the restaurant with the given `id` and the menu with the second `id`

Uses `Authorization: Bearer <token>` for authorization.

Returns an order for the menu given `id`

`GET /orders`

---
View all orders

Uses `Authorization: Bearer <token>` for authorization.

Returns a list of all the orders for the current user


`GET /orders/:id`

---
View the order with the given `id`

Uses `Authorization: Bearer <token>` for authorization.

Returns a single order with the given `id`

`PATCH /orders/:id`

---
Handles order fulfillment

Uses `Authorization: Bearer <token>` for authorization.

Takes a single parameter, either `true or false`

Returns the order with the fulfilled status using the parameter sent.

---

## Authors
[Charles Swaleh](https://github.com/mashm3ll0w)

## License

This software is licensed under the MIT License
