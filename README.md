# README

## Dependencies

- Ruby 2.5.7
- Rails 6.0.0

### Install Ruby, Rails and the required gems

    bundle install

## Database Management

To setup database you either run:

    bundle exec rails db:setup

or:

    bundle exec rails db:create
    bundle exec rails db:migrate
    bundle exec rails db:seed

## Jobs

To get Sidekiq up and running use the following:

    sidekiq

## Tests

You should run the tests with one of the following commands:

    bundle exec rake

or:

    rspec

## About how URLs are shortened

To generate the shortened URL base 36 encoding is used from the url id record that is stored in the database
after the url is saved. This type of enconding can convert strings with a big amount of characters into fewer
characters.

More detailed information can be found in the following link:

https://en.wikipedia.org/wiki/Base36

## Live project

Project is up and running at: https://shorturl2020.herokuapp.com

