Given(/^The user can access the homepage$/) do
  @homepage = Testwebsite.new
  @homepage.test_homepage.load
  @homepage.test_homepage.displayed?
  @homepage.test_homepage.assertHomepage
end