# Cloudcontacts

This repository is my submission to the 'Take Home Test' as requested by Alison Monico at Cloudreach on 2015-05-11.

## Requirements
It is delivered as a Rails app git repository, and assumes the availability of `rails 4.2.1` and `ruby 2.1.2`. Subsequent to cloning from GitHub, `bundle install` should be run.

## Question 1
Question 1 asks for a FizzBuzz implementation. This has been implemented as a `rake` task within the Rails repo.

### Testing:
    bundle exec rspec -b -c spec/lib/question_one_spec.rb

### Executing the Program:
    bundle exec rake fizz_buzz

