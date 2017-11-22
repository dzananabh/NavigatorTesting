require_relative 'main'

class HomePage < Main

  #def initialize(driver)
  #  super
  #end

  def site_lang
    @browser.element(:tag_name, 'html').attribute_value('lang')
  end

  def en_language
    @browser.element(:class, 'en')
  end

  def bs_language
    @browser.element(:class, 'bs')
  end

  def search_box
    @browser.text_field(:xpath, '//*[contains(concat( " ", @class, " " ), concat( " ", "tt-query", " " ))]')
  end

  def add_place_btn
    @browser.element(:xpath, 'id("header_container")/ul/li[1]/a/span[2]')
  end

  def suggest_feature_btn
    @browser.element(:css, '#header_container > ul.navigation.left > li:nth-child(2)')
  end

  def fb_btn
    @browser.element(:class, 'iconav-facebook')
  end

  def twitter_btn
    @browser.element(:class, 'iconav-twitter-2')
  end

  def google_btn
    @browser.element(:class, 'iconav-googleplus')
  end

  def zoom_in_btn
    @browser.element(:class, 'leaflet-control-zoom-in')
  end

  def zoom_out_btn
    @browser.element(:class, 'leaflet-control-zoom-out')
  end

  def focus_on_user
    @browser.element(:class, 'leaflet-control-focusonuser-button')
  end

  def switch_map_view
    @browser.element(:class, 'leaflet-control-layers-switch')
  end

  def search_result
    @browser.element(:css, '#header_search > div > span > span.tt-dropdown-menu > div > span > div.tt-suggestion > p')
  end

  def switch_to_eng
    en_language.click
  end

  def switch_to_bs
    bs_language.click
  end

  def search_term (term)
    search_box.set term
  end

  def add_place
    add_place_btn.click
  end

  def suggest_feature
    suggest_feature_btn.click
  end

  def zoom_map
    @browser.element(:xpath, 'id("page-body-content")/div[2]/div[2]/div[1]/div[1]/div[2]/img[65]')
  end

  def map_style
    @browser.element(:class, 'caption')
  end
end