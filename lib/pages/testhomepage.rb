class Testhomepage < SitePrism::Page
  set_url www.google.com
  # set_url_matcher

  def assertHomepage
    expect(page.title).to eql("google")
  end
end