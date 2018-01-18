# Technical Test

Written in Ruby. 

### Setup

[Ruby needs to be installed.](https://www.ruby-lang.org/en/documentation/installation/)  
[Chrome needs to be installed.](https://www.google.co.uk/chrome/browser/desktop/index.html?brand=CHBD&gclid=EAIaIQobChMIo_2rn9Xi2AIV6grTCh3ggA3OEAAYASAAEgLp5_D_BwE)  

run `bundle install` to install all the gems required. 

### Running tests

To run the tests without reports, use the Rake taskrunner:

`rake run_tests`

For an HTML report:

`rake run_tests_with_report`

The report will be in the reports directory.


## Decision justifications

Browser choice is fairly simple. Chrome heavily dominates the usage share for web browsers.  

It's also my browser of choice so i'm heavily biased. Dev tools are great all purpose, and comes with the device toolbar which is very handy.