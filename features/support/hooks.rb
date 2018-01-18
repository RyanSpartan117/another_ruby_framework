#After every step it outputs the url to the terminal.
AfterStep do |scenario|
    url = URI.parse(current_url)
    puts url
end