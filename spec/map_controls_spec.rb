describe 'map zooming and map view change' do

  let(:home_page) {HomePage.new(@browser)}

  context 'zoom testing' do
  it 'zoom in and out' do
    home_page.zoom_in_btn.click
    home_page.zoom_out_btn.click
    expect(home_page.zoom_map).to exist
    #sleep 2020
    end
  end

  context 'map view switching' do
    it 'change the map view style' do
      home_page.switch_map_view.click
      expect(home_page.map_style.text).to eq 'MAPA'
    end
  end
end
