require_relative 'main'

class CreatePage < Main

  def scroll(pixel)
    #putting JavaScript code to a variable outside of execute script, concating it then executing with JS
    script = "$('.mCSB_container').css({ top:'" + pixel.to_s + "px' })"
    @browser.execute_script script
  end

  def site_lang
    @browser.element(:tag_name, 'html').attribute_value('lang')
  end

  def poi_name
    @browser.text_field(:id, 'poi_name')
  end

  def poi_city
    @browser.text_field(:id, 'poi_city_name')
  end

  def poi_zip_code
    @browser.text_field(:id, 'poi_zip_code')
  end

  def poi_street_name
    @browser.text_field(:id, 'poi_place_id')
  end

  def poi_house_number
    @browser.text_field(:id, 'poi_house_number')
  end

  def poi_street_name_alt
    @browser.text_field(:id, 'poi_street_name_alt')
  end

  def poi_description
    @browser.textarea(:id, 'poi_description')
  end


  def add_category
    site_lang == 'en' ? @browser.element(:title, 'Add category').click : @browser.element(:title, 'Odaberite kategoriju').click
  end

  def category_drop
    @browser.select_list(:css, '.span3 > select')
  end

  def subcategory_drop
    @browser.select_list(:xpath, 'id("place-form")/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/select')
  end

  def tags
    @browser.text_field(:xpath, 'id("place-form")/div[2]/div[2]/div[3]/div[2]/ul[1]/li[1]/input[1]')
  end

  def mon
    @browser.element(:id, 'btn_day_mon')
    #self
  end

  def tue
    @browser.element(:id, 'btn_day_tue')
    #self
  end

  def wed
    @browser.element(:id, 'btn_day_wed')
    #self
  end

  def thu
    @browser.element(:id, 'btn_day_thu')
    #self
  end

  def fri
    @browser.element(:id, 'btn_day_fri')
    #self
  end

  def sat
    @browser.element(:id, 'btn_day_sat')
    #self
  end

  def sun
    @browser.element(:id, 'btn_day_sun')
    #self
  end

  def opening_hours
    @browser.text_field(:id, 'working_hours_0_0')
  end

  def closing_hours
    @browser.text_field(:id, 'working_hours_0_1')
  end

  def opening_hours_alt
    @browser.text_field(:id, 'working_hours_1_0')
  end

  def closing_hours_alt
    @browser.text_field(:id, 'working_hours_1_1')
  end

  def add_hours
    @browser.element(:class, 'btnAddWorkingHours')
  end

  def phone
    @browser.text_field(:xpath, 'id("place-form")/div[4]/div[2]/div/div[2]/input')
  end

  def mobile
    @browser.text_field(:id, 'poi_mobile_phone')
  end

  def fax
    @browser.text_field(:id, 'poi_fax')
  end

  def add_website
    @browser.text_field(:id, 'poi_web')
  end

  def add_email
    @browser.text_field(:id, 'poi_email')
  end

  def add_fb
    @browser.text_field(:id, 'poi_facebook_url')
  end

  def add_twitter
    @browser.text_field(:id, 'poi_twitter_url')
  end

  def add_ig
    @browser.text_field(:id, 'poi_instagram_url')
  end

  def add_foursquare
    @browser.text_field(:id, 'poi_foursquare_url')
  end

  def add_wiki
    @browser.text_field(:id, 'poi_wikipedia_url')
  end

  def add_trip_advisor
    @browser.text_field(:id, 'poi_tripadvisor_url')
  end

  def add_youtube
    @browser.text_field(:id, 'poi_youtube_url')
  end

  def add_ig_hashtag
    @browser.text_field(:id, 'poi_instagram_hashtag')
  end

  def wifibtn
    @browser.element(:id, 'lbl-has-wifi')
  end

  def wifi
    @browser.element(:id, 'lbl-has-wifi').click
  end

  def wifi_password
    @browser.text_field(:id, 'poi_wifi_pass')
  end

  def wifi_name
    @browser.text_field(:id, 'poi_wifi_ssid')
  end

  def accept_cc
    @browser.checkbox(:id, 'poi_accepts_credit_cards').set
  end

  def upload_file
    @browser.file_field(:id, 'fileToUpload').set('/Users/dzanan/Documents/NavigatorTesting/docs/test.png')
  end

  def comment
    @browser.textarea(:id, 'poi_comment')
  end

  def icon_remove
    @browser.element(:class, 'icon-remove')
  end

  def create_place
    @browser.element(:text, 'Create').click
  end
end