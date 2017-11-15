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
    #create_page.wifi
    end
  end
end