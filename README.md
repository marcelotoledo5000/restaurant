[![Maintainability](https://api.codeclimate.com/v1/badges/00f4fbc2a6f4ed1329ca/maintainability)](https://codeclimate.com/github/marcelotoledo5000/restaurant/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/00f4fbc2a6f4ed1329ca/test_coverage)](https://codeclimate.com/github/marcelotoledo5000/restaurant/test_coverage)

# README

<h3>About this project:</h3>

Is a Rails application to management Restaurants, and gives 2 resources:
- Restaurants
- Dishes

<h3>Technical Informations</h3>

* The Ruby language - version 2.5.3
* The Rails gem - version 5.2.2
* RSpec: 3.8.1
* Rubocop: 0.61.1
* PostgreSQL

<h4>To use:</h4>

Clone the project:

<pre>
$ git clone git@github.com:marcelotoledo5000/restaurant.git
$ cd restaurant
</pre>

<h4>With Docker:</h4>

- Needs to update `database.yml` to:
<pre>
# host: localhost   # when using localhost
host: db          # when using docker
</pre>

<pre>
$ script/setup # => development bootstrap, preparing containers
$ script/server # => starts server
$ script/console # => starts console
$ script/test # => running tests
</pre>

<h4>Running Local:</h4>

<h6>System dependencies:</h6>

* Install and configure the database: [Postgresql-10](https://www.postgresql.org/download/)

- Needs to update `database.yml` to:
<pre>
host: localhost   # when using localhost
# host: db          # when using docker
</pre>

<pre>
$ bundle install
$ rails db:setup
</pre>

<h4>To run the tests</h4>

<pre>
$ bundle exec rspec
</pre>

<h4>To run app</h4>

To check that application runs properly by entering the command:

<pre>
$ bundle exec rails server
</pre>

To see the application in action, starts the rails server to able [http://localhost:3000/](http://localhost:3000.)
