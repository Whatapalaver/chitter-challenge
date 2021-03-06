Chitter Challenge
=================

*Solo Weekend Challenge at the end of Makers Week 4*

By the end of week 4 all Makers developers can:

Build a simple web app with a database
Follow an effective debugging process for database applications
Explain the basics of how databases work (e.g. tables, SQL, basic relationships)

Challenge:
-------

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

Workflow:
--------
*The glorious technicolour homepage*  

![Homepage](https://github.com/Whatapalaver/chitter-challenge/blob/master/public/images/Home_page_1.png)

*And the extraordinary Sign Up Page*  

![Sign Up Page](https://github.com/Whatapalaver/chitter-challenge/blob/master/public/images/Sign_up_1.png)

*Does it get better than this Log In Page*  

![Log In Page](https://github.com/Whatapalaver/chitter-challenge/blob/master/public/images/Log_in_3.png)

*Here is the main attraction - peeps and more peeps!*  

![Add New Peep](https://github.com/Whatapalaver/chitter-challenge/blob/master/public/images/Add_new_peep_4.png)

*They think its over.....*

![Logged Out](https://github.com/Whatapalaver/chitter-challenge/blob/master/public/images/Log_out_5.png)

Progress Update:
-------
- [x] I want to post a message (peep) to chitter
- [x] I want to see all peeps in reverse chronological order
- [x] I want to see the time at which it was made
- [x] I want to sign up for Chitter
- [x] I want to log in to Chitter - Happy path only!!
- [x] I want to log out of Chitter
- [ ] I want to receive an email if I am tagged in a Peep

Next Steps:
---------
- [ ] I have only written the Happy Path for log-in. Need to capture edge cases eg. incorrect password 
- [ ] Styling is pretty horrific - improvement required 
- [ ] My authentication feature tests are failing and I have no idea - it works in production 


Putting Chitter to the Test
-----------

Install and set up PostrgreSQL on your machine  
Clone this repo to your local machine: `git clone` https://github.com/Whatapalaver/chitter-challenge  
Open the directory: `cd chitter-challenge`  
Load the dem files: `bundle install`  
Set up the databases: `rake setup`  
*This will give you the application, and set up two databases: chitter_challenge for the development environment, and chitter_challenge_test for the test environment.*  
Run the tests: `rspec`  
Run the server: `Ruby 'app.rb`  
Navigate to localhost:4567 to use the app in the browser  

Features:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Notes on functionality:
------

* You don't have to be logged in to see the peeps.
* Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Your README should indicate the technologies used, and give instructions on how to install and run the tests.

Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the CSS to make it look good.

Good luck and let the chitter begin!
