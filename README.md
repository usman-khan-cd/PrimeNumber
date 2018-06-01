# README

This documentation describes how to set up the application, its components, how
to deploy it, and some internal information.

## Set up
This application needs ruby version 2.5.0.

This application is also based on the latest stable Rails version, which is, at
this moment, 5.0.7.

First, you have to install all the dependencies. To do so, run:

    gem install bundler
    bundle install


## Database creation, initialization

 Rename database.example.yml to database.yml and fill in the required details if needed

After that, your application is ready to go. To run it, you have to execute:

    rails s
    
## Automated Tests
  To run the test
  
    rails test
