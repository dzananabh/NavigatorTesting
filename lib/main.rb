class Main

  def initialize(browser)
    @browser = browser
  end

  def navigate_to_root(url)
    @browser.goto url
  end
end