class Diary

  def initialize
    @diary_entries = []
    @todo_list = []
  end

  def add_diary_entry(diary_entry_instance)
    #adds entry
    @diary_entries.push(diary_entry_instance)
  end

  def add_todo(todo_instance)
    #adds todo
    @todo_list.push(todo_instance)
  end


  def all_diary_entries
    #returns all diary entries
    entries = []
    @diary_entries.each do |entry|
      entries.push(entry.contents)
    end
    return entries
  end
    
  def all_todos
    #returns all todo entries
    entries = []
    @todo_list.each do |todo|
      entries.push(todo.contents)
    end
    return entries
  end

  def reading_chunk(wpm, minutes)
    #returns the longest diary entry that can be read in the time specified. 
    fail "error: no diary entries have been added" if @diary_entries == [] 
    chosen_chunk = ["EnterMoreEntries"] #originally this variable was a string, but in case two entries of the same word count were in @diary_entries this became an array. The defult value of the chunk array has to be a string of low word count
    time_availible = wpm * minutes
    @diary_entries.each do |content|
      content_size = content.contents.split.length
      if content_size == chosen_chunk[0].split.length #this if statement checks to see whether the entry being checked is the same length as the one currently in thee array
        chosen_chunk.push(content.contents)
      else
        if (content_size < time_availible) && (content_size > chosen_chunk[0].split.length)
          chosen_chunk[0] = (content.contents)
        end
      end
    end
    if chosen_chunk[0] == "EnterMoreEntries" && @diary_entries.length > 0
      return "Sorry, you don't have enough time."  
    else
      return chosen_chunk.sort[0]
    end
  end 

  def find_numbers_in_diary
    #returns and phone numbers found within the diary entries
    fail "error: no diary entries have been added" if @diary_entries == [] 
    numbers_in_diary = []
    @diary_entries.each do |entry|
      entry.contents.scan(/[0-9]+/).each do |number|
        if number.length == 11
        numbers_in_diary.push(number)
        end
      end
    end
    return numbers_in_diary
  end
end