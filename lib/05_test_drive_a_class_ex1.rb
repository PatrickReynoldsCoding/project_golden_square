class DiaryEntry

  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @count = @contents.split(" ").length
    return p @count
  end

  def reading_time(wpm)
    fail "reading speed much be above 0" unless wpm.to_f > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    counter = 0
    chunk = [] 
      @contents.split(" ").each do |word|
        # p word
        chunk.push(word)
        counter = counter + 1
        # p chunk
        if counter == minutes + 1 
          p chunk.join(" ")
          exit
        end
      
      end 
  end

end

my_diary = DiaryEntry.new("my title", "my content is this string here")
my_diary.reading_chunk(4, 1)