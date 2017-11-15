describe 'search for string and click on result' do

  let(:home_page) {HomePage.new(@browser)}
  let(:poi_page) {LocationPoiPage.new @browser}

  it 'do search' do
    home_page.search_box.clear
    home_page.search_box.set 'Narodno pozoriste'
    expect(home_page.search_result.text).to eq('Narodno pozorište')
  end

  it 'click on search result' do
    home_page.search_result.click
    poi_page.poi.wait_until_present
    expect(poi_page.poi).to exist
  end

  it 'check for the existence of social share buttons' do
    poi_page.share_btn.hover
    expect(poi_page.fb_btn).to be_visible
    expect(poi_page.twitter_btn).to be_visible
    expect(poi_page.google_btn).to be_visible
    expect(poi_page.pinterest_btn).to be_visible
  end
end