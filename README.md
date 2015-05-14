# Cloudcontacts

This repository is my submission to the 'Take Home Test' as requested by Alison Monico at Cloudreach on 2015-05-11.

## Requirements
It is delivered as a Rails app git repository, and assumes the availability of `rails 4.2.1` and `ruby 2.1.2`.

    git clone https://github.com/dliggat/cloudcontacts.git
    cd cloudcontacts
    bundle install

## Question 1
Question 1 asks for a FizzBuzz implementation. This has been implemented as a `rake` task within the Rails repo. _I've asked for this when conducting interviews, but never written one myself. First time for everything!_

### Testing:
    bundle exec rspec -b -c spec/lib/question_one_spec.rb

### Executing the Program:
    bundle exec rake fizz_buzz


## Question 2
Question 2 asks for a function that sorts the keys in a hash by the length of the key, as a string. The function can be found at `./app/lib/question_two.rb`.

### Testing:
The provided example is amongst the test suite.

    bundle exec rspec -b -c spec/lib/question_two_spec.rb

## Question 3
Question 3 asks for a Rails application that implements a simple address book.

### Bootstrapping the App
This sets up the app to run locally. The seed task is optional, but recommended.

    bundle exec rake db:create db:migrate db:seed

### Testing:
Run the specs for the entire repo:

    bundle exec rspec

### Usage
    bundle exec rails server

Visit http://localhost:3000

