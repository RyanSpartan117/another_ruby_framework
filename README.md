# Technical Test

Written in Ruby. 

### Setup

[Ruby needs to be installed.](https://www.ruby-lang.org/en/documentation/installation/)  
[Chrome needs to be installed.](https://www.google.co.uk/chrome/browser/desktop/index.html?brand=CHBD&gclid=EAIaIQobChMIo_2rn9Xi2AIV6grTCh3ggA3OEAAYASAAEgLp5_D_BwE)  

First, clone this repo.  
Then from the repo root, run `bundle install` to install all the gems required. 

### Running tests

To run the tests without reports, use the Rake taskrunner:

`rake run_tests`

For an HTML report:

`rake run_tests_with_report`

The report will be in the reports directory.


## Decision justifications

Browser choice is fairly simple. Chrome heavily dominates the usage share for web browsers.  

It's also my browser of choice so i'm heavily biased. Dev tools are great all purpose, and comes with the device toolbar which is very handy.

### Tests  

I have split the tests up depending on which part of the todos list functionality i'll be testing.

I have the setup test - tagged with @AddTodo
And the teardown test - tagged with @RemoveTodos

Adding and removing todos is the main functionality of this page, and where I decided to focus the tests.  

I have chosen to classify sad/bad test paths as out of scope considering time constraints for this technical test. So everything here is purely happy. 

I've included a nonsense test that fails in line with the expected deliverables.  

Due to time constraints, I was not able to implement the clearing of the tests. This is the next part of the functionality I would have automated.
