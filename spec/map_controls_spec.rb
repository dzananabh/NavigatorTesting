describe 'map zooming and map view change' do

  let(:home_page) {HomePage.new(@browser)}

  context 'zoom testing' do
  it 'zoom in and out' do
    home_page.zoom_in_btn.click
    home_page.zoom_out_btn.click
    end
  end

  context 'map view switching' do
    it 'change the map view style' do
      home_page.switch_map_view.click
    end
  end
end
