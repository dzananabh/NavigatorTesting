describe 'Check if social buttons are present' do

  let(:home_page) {HomePage.new @browser}

  it 'expect fb_button to be present' do
    expect(home_page.fb_btn).to exist
  end

  it 'expect twitter_button to be present' do
    expect(home_page.twitter_btn).to exist
  end

  it 'expect google_button to be present' do
    expect(home_page.google_btn).to exist
  end
end