class PlayList
  def initialize
    @list = []
  end
  

  def add(artist, title)
    if artist.instance_of?(String) && title.instance_of?(String)
      @list.push({artist => title})
    else 
      fail "error: entry must be text"
    end
  end

  def show_list
    if @list == []
      return "No songs added yet"
    else
      return @list
    end
  end

end


#     my_playlist = PlayList.new
#     my_playlist.add("Blur", "Song 2")
# my_playlist.show_list