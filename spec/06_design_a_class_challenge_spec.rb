require '06_design_a_class_challenge'

RSpec.describe PlayList do
 context 'the list method' do
   it 'when nothing added it returns empty array' do
    my_playlist = PlayList.new
    
    expect(my_playlist.show_list).to eq("No songs added yet")
   end
    it 'when a song is added it returns a hash' do
    my_playlist = PlayList.new
    my_playlist.add("Blur", "Song 2")
    expect(my_playlist.show_list).to eq([{"Blur" => "Song 2"}])
   end
    it 'when 2 songs are added it returns the hash' do
    my_playlist = PlayList.new
    my_playlist.add("Blur", "Song 2")
    my_playlist.add("The Kinks", "Sunny Afternoon")
    expect(my_playlist.show_list).to eq([{"Blur" => "Song 2"}, {"The Kinks" => "Sunny Afternoon"}])
   end
 end

 context 'when not given 2 arguments' do
   it 'fails' do
    my_playlist = PlayList.new
    
    expect {my_playlist.add(976976, "Song 2")  }.to raise_error "error: entry must be text"
   end
 end
end