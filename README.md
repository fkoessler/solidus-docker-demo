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
docker-compose run --rm app bundle exec rake db:setup
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
