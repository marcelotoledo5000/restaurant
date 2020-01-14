# **RESTAURANT**

[![Maintainability](https://api.codeclimate.com/v1/badges/00f4fbc2a6f4ed1329ca/maintainability)](https://codeclimate.com/github/marcelotoledo5000/restaurant/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/00f4fbc2a6f4ed1329ca/test_coverage)](https://codeclimate.com/github/marcelotoledo5000/restaurant/test_coverage)

[![Build Status](https://api.travis-ci.com/marcelotoledo5000/restaurant.svg?branch=master)](https://travis-ci.com/marcelotoledo5000/restaurant.svg?branch=master)

## README

### About this project

Is a Rails application to management Restaurants, and gives 2 resources:

- Restaurants
- Dishes

### Technical Informations and dependencies

``` code
* The Ruby language   # version 2.6.5
* The Rails gem       # version 6.0
* Capybara:           # version 3.30
* RSpec               # version 3.9.0
* Rubocop             # version 0.79.0
* PostgreSQL          # version 10
* Docker              # version 19.03.5-ce
* Docker Compose      # version 1.25.0
```

### To use

Clone the project:

``` Shell
git clone git@github.com:marcelotoledo5000/restaurant.git
cd restaurant
```

### With Docker (better option)

``` Shell
script/setup    # => development bootstrap, preparing containers
script/server   # => starts server
script/console  # => starts console
script/test     # => running tests
```

#### Running without Docker (not recommended!)

If you prefer, you'll need to update `config/database.yml`:

``` Yaml
# host: db        # when using docker
host: localhost   # when using localhost
```

System dependencies

- Install and configure the database: [Postgresql-10](https://www.postgresql.org/download/)

And then:

``` Shell
gem install bundler         # => install the last Bundler version
bundle install              # => install the project's gems
rails db:setup db:migrate   # => prepare the database
rails s                     # => starts server
rails c                     # => starts console
bundle exec rspec           # => to running tests
```

### To run app

To see the application in action, starts the rails server to able [http://localhost:3000/](http://localhost:3000.)

### Dockerfile

[Dockerfile is here](https://github.com/marcelotoledo5000/Dockerfiles)
