class Testhomepage < SitePrism::Page 
  set_url "https://www.google.co.uk" 
  set_url_matcher /google/ #Regex url matcher to check the page is displayed

  def assertHomepage #Assertions for the corresponding page within the corresponding page object class
    expect(page.title).to eql("Google")
  end
end