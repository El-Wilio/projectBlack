# README

Project Black is a code name for a social network project built in rails. More specifically, it is a social network built around the idea of clubs and the choice of anonimity.

## System Specifications

* Ruby version: ruby 2.1.2p95

* Rails version: 4.1.4

## Requirements

* Javascript interpreter to install Devise (JSON is a popular one).
* Openssl
* Postgres 9.3 or higher when it will pass the alpha stage


## Installation Instructions

This project doesn't inclde config/database.yml so you'll have to include yourself with the appropriate server configurations.

## Gemfile

Nothing to fancy in the Gemfile, you just have to run bundle install. If somehow you need to reinstall Devise from the get-go, you'd might want to check their git page. You would also need a javascript interpreter (sudo apt-get install JSON for linux users).
 
also the Gemfile is not absolute, some gems will be removed, some will be added. What is certain tho, is that Sqlite3 will be removed in favor of Postgresql. There's no reason to make a switch now since everything is so simple, but it would have to be soon since Heroku is anti sqlite3 for some reason.
## Working Log

* July 10th 2014

Currently working on tweaking the User model. 

* July 11th 2014

Working on the test environment. Built a test to test the constraint of the username and if the registration page works. It has to be noted that:
"rake test" is to the test the model and "rspec" is to the the form filling.
 
I also added the Capybara gem to help me with the testing environment.
##To do list for now

- [x] Create the User Model
- [x] Write the appropriate tests to validate the model
- [x] Make a standard registration system that follows the guideline of the model (restrictions and what not)
- [x] Write the appropriate tests to validate the registration
- [x] Build a sign in page for users to use. 
- [x] Write the appropriate test to validate the login process 

***
- [x] Create the Club model
- [x] Create the Tag Model
- [x] Build the following association: club has and belongs to many users.
- [x] Build the following association: club has and belongs to many tags.
- [ ] Write the appropriate tests to validate the models
- [ ] Create the club controller that will have the following methods : new, create, edit, view, delete
- [ ] Create the club views for the controller's method.
- [ ] Write the appropriate tests for the controller-view interaction

***
- [ ] Create the Post model
- [ ] Write the appropriate tests to validate the model
- [ ] Create the posts Controller that will have the following methods: new, create, edit, view, delete
- [ ] Create views for the controller's method
- [ ] Write the appropriate tests for the controller-view interaction
