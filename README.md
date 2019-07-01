![Draw And Fold](logo-800.png)

### Setup instructions

* Install Rbenv or Asdf
* Install Ruby 2.6.3 with Rbenv or Asdf
* Install requirements for Postgres in a Conda environment or run it on your local machine
* Install bundler in your ruby environment: `gem install bundler`
* Install gems in a local bundle with: `bundle install --path .bundle`
* Start a postgres service
* Set up database with:
  * `bundle exec rails db:create`
  * `bundle exec rails db:migrate`
* Start rails app with: `bundle exec rails s`
