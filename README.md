# FFX Index

FFX Index is the all-in-one resource for FFX players.

## Installation guide

* Install ruby

* Install bundler
`gem install bundler`

* Move to the project folder

* Run bundle install
`bundle install`

* Create and populate DB
`rake db:setup`

* Restart postgresql service (if needed)
```
# MacOS
brew services restart postgresql

# Linux
sudo service postgresql restart
```

* Start the server
`bin/rails server`
