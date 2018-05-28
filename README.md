# README

Sample Docker Implementation of Solidus using Postgres

## Requirements

- Docker
- Docker Compose

## Install

To install, comment out the `gem 'solidus', path: 'solidus'` line from the `Gemfile`.
Then run the following:

```
docker-compose build
docker-compose run --rm app railties:install:migrations
docker-compose run --rm app rake db:create
docker-compose run --rm app rake db:migrate
docker-compose run --rm app rake db:seed
docker-compose run --rm app rake spree_sample:load
```

### Run development environment

Don't forget to uncomment the `gem 'solidus', path: 'solidus'` line in the `Gemfile`.

```
docker-compose up
````

Navigate your browser to http://localhost:3000/

To terminate run

```
docker-compose down
```
