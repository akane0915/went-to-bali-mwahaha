# _The Most Amazing E-Commerce Site_

#### _This is a Ruby on Rails E-Commerce Application that includes login functionality, a shopping cart, and Stripe.  July 14, 2017_

#### By _**Asia Kane**_

## Description

This is an E-Commerce application is for both customers (users) and store managers (admins).  It uses AJAX to improve user experience and includes `stripe`, `bcrypt` and `materialize`.

Users can:
- Create an account
- Login/Logout of their account
- View all products on one page
- Add items to their shopping cart
- Visit their shopping cart to view total price and/or remove items from their cart

User Stories using AJAX:
- Users can add products to their shopping cart from the index page with AJAX. The total item count in the nav bar updates.
- Users can click on a product and show/hide the product detail using AJAX.
- Users can remove items from the shopping cart without a page reload.  The total order price and item count in the nav bar updates.

Additional Features:
- Includes Stripe so users can pay when finalizing orders.
- Flash messages included for signing up, signing in and signing out.
- Only admins can add, update and delete a product.
- Flash messages for adding, updating and deleting products.
- Admin link in nav bar so admins can easily add, update and delete products.
- Allow other than whole dollar amounts for price (e.g. 12.99).

The application structure is outlined below.  

Models:
  - Users
  - Products
  - Orders
  - Order Items

## Database Seeding

The application is seeded using `faker`.

* Note: There is one admin user seeded in the database.  An admin can only be added by seeding the database to prevent any user from accessing admin functionality.  To access the admin account, login using:

* Email: "admin@admin.com"
* Password: "password123456"

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/akane0915/went-to-bali-mwahaha`
* `cd went-to-bali-mwahaha`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

This application uses Stripe.  To configure, you must create a stripe account and a .env file at the top level of your project directory.  In the file, include (replacing the text in quotes with your own keys):

* PUBLISHABLE_KEY="Your publishable key from stripe here"
* SECRET_KEY="Your secret key from stripe here"

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Asia at akane0915 on Github.

## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* AJAX
* Stripe
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* Bcrypt Gem
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**
