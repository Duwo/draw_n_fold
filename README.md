![Draw And Fold](logo-800.png)

Install Ruby 2.6.3 with Rbenv or Asdf

Install requirements for Postgres in a Conda environment or run it on your
local machine

install bundler in your ruby environment

gem install bundler

install gems in a local bundle with

bundle install --path .bundle

start postgres service

set up database with

bundle exec rails db:create
bundle exec rails db:migrate

Start rails app with
bundle exec rails s

It should run on localhost:3000

