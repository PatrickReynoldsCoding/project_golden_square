class DiaryEntry
  def initialize(entry)
    @entry = entry
  end

  def contents
    return @entry
  end

  def count_words
    #returns word count of contents
    @entry.split.length
  end

end