# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of learning Rails by example.

## Quick glance of the project

This is the main page where a user can see all the products listed out regardless of which category it belongs to.
!["Screenshot of main page 1"](https://github.com/dinasauur/jungle-rails/blob/master/docs/home-page-1.png?raw=true)
!["Screenshot of main page 2"](https://github.com/dinasauur/jungle-rails/blob/master/docs/home-page-2.png?raw=true)
On the nav bar, users can select the category they want and it will take them to that category's list of products.
!["Screenshot of category page"](https://github.com/dinasauur/jungle-rails/blob/master/docs/category-page.png?raw=true)
If the user is interested in a specific product, they can click on it and they will be redirected to that product page.
!["Screenshot of product(:id) page"](https://github.com/dinasauur/jungle-rails/blob/master/docs/show-page.png?raw=true)
Should the user wish to add some products to their cart, their cart page would look like this. It will provide them with a detailed breakdown of each product.
!["Screenshot of confirmation message to delete"](https://github.com/dinasauur/jungle-rails/blob/master/docs/cart-page.png?raw=true)
This is what the payment process looks like if the user is ready to pay for their product.
!["Screenshot of confirmation message to delete"](https://github.com/dinasauur/jungle-rails/blob/master/docs/pay-card-page.png?raw=true)
If user has admin access, they can add or delete products to the page.
!["Screenshot of error messages"](https://github.com/dinasauur/jungle-rails/blob/master/docs/admin-product-page.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.
The mm/yy is 05/24
The CVV is 111

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## 