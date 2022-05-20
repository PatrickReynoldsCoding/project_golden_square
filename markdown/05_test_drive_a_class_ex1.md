# {{PROBLEM}} CLASS Design Recipe
## 1. Describe the Problem
> As a user i want to input my diary entries with a title
> I want the program to count the words in the entry and take my reading speed in WPM.
>I also wish to give the program the time i have availible to read my diary
> I finally want the program to return to me a chunk of my entry that i am able to read in the time i have availible


## 2. Design the CLASS Signature


```ruby
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
my_diary = DiaryEntry.new("my title", "my content")
my_diary.title
# => "my title"

# 2
my_diary = DiaryEntry.new("my title", "my content")
my_diary.contents
# => "my content"

# 3
my_diary = DiaryEntry.new("my title", "my content")
my_diary.count_words
# => 2

# 4
my_diary = DiaryEntry.new("my title", "my content")
my_diary.reading_time(1)
# => 2

# 5
my_diary = DiaryEntry.new("my title", "my content")
my_diary.reading_chunk(1, 2)
# => "my content"

# => 2


# # 3
# my_diary = DiaryEntry.new("18/05/2022", "I started the day with Yoga and meditation! We had a good peer group where we discussed what we had done the previous day. We then had a brief workshop followed by a brief bit of time for me to do some solo golden square challenges.")
# my_diary.contents
# # => "I started the day with Yoga and meditation! We had a good peer group where we discussed what we had done the previous day. We then had a brief workshop followed by a brief bit of time for me to do some solo golden square challenges."

```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._