# {{PROBLEM}} Class Design Recipe
## 1. Describe the Problem
> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.


## 2. Design the Class Signature


```ruby
class PlayList
  def initialize
    list = []
  end

  def add(song) # song is a hash containing an artist and track
    @song = song
    #add is used to add song to list array
  end

  def show_list 
    # Shows list of all added songs
  end


end

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
my_playlist = PlayList.new
my_playlist.show_list # => []

# 2
my_playlist = PlayList.new
my_playlist.add("Blur", "Song 2")
my_playlist.show_list # => ["Blur", "Song 2"]

# 3
my_playlist = PlayList.new
my_playlist.add("Blur", "Song 2")
my_playlist.add("The Kinks", "Sunny Afternoon")
my_playlist.show_list # => ["Blur", "Song 2"]

# 4
my_playlist = PlayList.new
my_playlist.add(976976, "Song 2")
# => "error: entry must be text"


# 5
my_playlist = PlayList.new
my_playlist.add("Song 2")
# => "error: please add artist and song"

```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.