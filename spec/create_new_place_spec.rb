describe 'creating new place on navigator' do

  let(:home_page) {HomePage.new @browser}
  let(:create_page) {CreatePage.new @browser}

  context 'when creating new place' do
  it 'enter information about place' do
    home_page.add_place
    create_page.poi_name.set 'Test'
    create_page.poi_city.set 'test'
    create_page.poi_zip_code.set '71000'
    create_page.poi_street_name.set 'Test'
    create_page.poi_house_number.set '21'
    create_page.poi_description.set 'Test Description'
    create_page.add_category
    create_page.category_drop.select @variables['dropdown']
    create_page.subcategory_drop.select @variables['subdropdown']
    create_page.tags.set 'bosanska hrana, domace, najbolje, izvorno '
    create_page.fri.click
    create_page.sat.class_name.strip == 'btn' ? create_page.sat.click : nil
    create_page.sun.class_name.strip == 'btn active' ? nil : create_page.sun.click
    create_page.scroll(-600)
    create_page.opening_hours.set '08'
    create_page.closing_hours.set '21'
    create_page.add_hours.click
    create_page.phone.set '+38730254254'
    create_page.mobile.set '+38761123321'
    create_page.fax.set '39384939002'
    create_page.add_website.set 'test'
    create_page.scroll(-1200)
    create_page.add_email.set 'test@test.com'
    create_page.add_fb.set 'www.facebook.com/test'
    create_page.add_twitter.set 'www.twitter.com/test'
    create_page.add_ig.set 'www.insgagram.com/test'
    create_page.add_youtube.set 'www.youtube.com/test'
    create_page.add_ig_hashtag.set 'testhash'
    create_page.upload_file
    create_page.wifi
    create_page.wifi_name.set 'test'
    create_page.wifi_password.set 'test'
    create_page.comment.set 'test comment'
    expect(create_page.icon_remove).to exist
    end
  end
end