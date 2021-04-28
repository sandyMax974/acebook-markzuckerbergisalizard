# AceBook

## Description

In week 8 of the Makers Academy curriculum, we are requiered to build a clone of well-know social web-app Facebook using Ruby on Rails. The main goal of this challenge was to assess if we could implement high-quality processes to build a project in a team.
This was quite challenging, as we had to pick-up a completely new framework in less than 2 weeks, whilst maintaining good-quality code and test coverage.

We were also given a list of requirements to follow by the main stakeholder (Makers coach) and had to translate these into user story and implement them as requested.

Requierements board [here](https://trello.com/b/N6ht59Tm/acebook-markzuckerbergisalizard).


**Live version**

Despite the short deadline given, Makers always puts an emphasis on having fun coding and we definitely had fun with the team creating this website. We slipped in a couple of inside jokes we shared during the 2-weeks, such as the lizard references 🦎, which became kind of our team mascott. 

Web-app hosted on heroku [here](https://lizardbook2021.herokuapp.com).

![Acebook web-app](https://github.com/sandyMax974/acebook-markzuckerbergisalizard/blob/main/screenshots/Screenshot%202021-04-27%20at%2016.42.19.png)

## Tech Stack

**General**
* Ruby on Rails
* PostgreSQL
* BCrypt (we did not know about device at the time)
* Bootstrap

**Testing**
* RSpec
* Capybara
* Selenium
* Rake

**Code quality**
* Rubocop
* Simplecov

**CI/CD**
* CircleCI

## Installation

### How to run

```
$ git clone git@github.com:sandyMax974/acebook-markzuckerbergisalizard.git
$ cd acebook-markzuckerbergisalizard
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails server  # Start the server on port 3000
```

### How to test
```
$ bundle exec rspec 
```
For a more in-depth view of the coverage report run `open coverage/index.html`

**Troubleshooting**

If you don't have Node.js installed yet, you might run into this error when running rspec:
```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```
That is because Rails will use a Javascript runtime (such as Node) under the hood. The easiest way is to install Node by running `brew install node` -
and then run `bundle exec rspec` again.


## User Stories
```
As a user, 
So I can keep up to date with my friends' life
I want to be able to login to Acebook

As a user,
So I can focus on the latest posts from my friends
I want the posts to show in reverse chronological order (newest to oldest)

As a stakeholder,
So I can have informations on my users
I want to retrict access to Acebook to user with an account

As a user,
So I can write better posts
I want to be able have a line break in a post

As a user,
So I can avoid awkward situations 
I want to be able to update and delete my own posts

As a user, 
So I can have a better browsing experience
I want to be able to see the date, time and author of each post

As a stakeholder,
In order to have a unique site
I want my site to have a space theme

As a user,
So I can interact with other posts
I want to be able to comment other people's and my own posts

As a user,
So I can interact with my firends posts
I want to be able to like posts and comments as well as see the total number of likes on them
```

## Reflection

Having a bit more experience with Rails, I would approach this project differenly and use more in-built libraries provided by Rails to have a cleaner file structure.
