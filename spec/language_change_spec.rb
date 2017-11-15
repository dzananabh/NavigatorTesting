describe 'change language of the site' do

  let(:home_page) {HomePage.new(@browser)}

  it 'change language' do
    if home_page.site_lang == 'en'
        home_page.switch_to_bs
      expect(home_page.add_place_btn.text).to eq 'Kreiraj objekat'
    else
        home_page.switch_to_eng
      expect(home_page.add_place_btn.text).to eq 'Create Place'
    end
  end
end