require_relative 'main'

class LocationPoiPage < Main

  def poi
    @browser.element(:css, 'div.ember-view > div.leaflet-map-pane > div.leaflet-objects-pane > div.leaflet-popup-pane > div > div.leaflet-popup-content-wrapper')
  end

  def share_btn
    @browser.element(:class, 'iconav-share')
  end

  def fb_btn
    @browser.element(:class, 'iconav-facebook-2')
  end

  def twitter_btn
    @browser.element(:class, 'iconav-twitter')
  end

  def google_btn
    @browser.element(:class, 'iconav-googleplus-2')
  end

  def pinterest_btn
    @browser.element(:class, 'iconav-pinterest')
  end
end