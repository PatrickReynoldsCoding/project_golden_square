
# {{PROBLEM}} Multi-Class Design Recipe
## 1. Describe the Problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries


## 2. Design the Class system


Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important,
not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

list nouns and verbs from the user story  


                                          ┌───────────────────────────────┐
                                          │                               │
                                          │                               │
                                          │      Diary                    │
                                          │      -----                    │
                                          │     arrays x 2                │
                                          │     add method x 2            │
                                          │     list method x 2           │
                                          │                               │
                                          │     reading chunk             │
                                          │                               │
                                          │     find phone number         │
                         ┌────────────────┴────────────────┬──────────────┴
                         │                                 │               
                         │                                 │               
                         │                                 │               
                         │                                 │               
                         │                                 │               
                         ▼                                 ▼
┌──────────────────────────────────┐        ┌───────────────────────────────────────┐   
│                                  │        │                                       │   
│        DiaryEntry                │        │            todo                       │   
│        ----------                │        │            ----                       │   
│        contents                  │        │                                       │   
│                                  │        │           contents                    │   
│        count_words               │        │                                       │   
│                                  │        │                                       │   
│                                  │        │                                       │   
│                                  │        │                                       │   
│                                  │        │                                       │   
└──────────────────────────────────┘        └───────────────────────────────────────┘   





Also design the interface of each class in more detail.




```ruby
class Diary

  def initialize
    @diary_entries = []
    @todo_list = []
  end

  def add_diary_entry(diary_entry_instance)
    #adds entry
  end

  def add_todo(todo_instance)
    #adds todo
  end


  def all_diary_entries
    #returns all diary entries
  end
    
  def all_todos
    #returns all todo entries
  end

  def reading_chunk(wpm, minutes)
    #returns the longest diary entry that can be read in the time specified. 
  end

  def find_numbers_in_diary
    #returns and phone numbers found within the diary entries
  end
end


class DiaryEntry
  def initialize(entry)
    #store data
  end

  def contents
    #show contents 
  end

  def count_words
    #returns word count of contents
  end

end

class Todo
  def initialize(todo)
    #store data
  end

  def contents
    #show contents 
  end

end




```

## 3. Create Examples as intergration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.


```ruby
# EXAMPLE

# 1. returns an entry if new entry object has been created
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry")
my_diary.add_diary_entry(entry1)
my_diary.all_diary_entries # =>["hello this is my first entry"]

# 2. returns multiple entries if multiple objects have been created
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry")
entry2 = DiaryEntry.new("hello this is my second entry")
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.all_diary_entries # =>["hello this is my first entry", "hello this is my second entry"]


# 3. returns todo if new todo object has been created
my_diary = Diary.new
todo1 = Todo.new("wash the car")
my_diary.add_todo(todo1)
my_diary.all_todos # =>["wash the car"]

# 4. returns one todo if multiple todos have been created, but only one has been added
my_diary = Diary.new
todo1 = Todo.new("wash the car")
todo2 = Todo.new("clean the dishes")
my_diary.add_todo(todo1)
my_diary.all_todos # =>["wash the car"]

# 5. returns multiple todos if multiple todos have been created & added
my_diary = Diary.new
todo1 = Todo.new("wash the car")
todo2 = Todo.new("clean the dishes")
my_diary.add_todo(todo1)
my_diary.add_todo(todo2)
my_diary.all_todos # =>["wash the car", "clean the dishes"]



# 6. pulls all phone numbers from entries if one entry has been created
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
my_diary.add_diary_entry(entry1)
my_diary.find_numbers_in_diary # => ["07954625842"]

# 6. pulls all phone numbers even if there are multiples from entries if one entry has been created
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry 07954625842 and this is another number 23659845125")
my_diary.add_diary_entry(entry1)
my_diary.find_numbers_in_diary # => ["07954625842" , "23659845125"]

# 7. pulls all phone numbers from entries if multiple entries have been created
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
entry2 = DiaryEntry.new("hello this is my second entry 23659845125")
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.find_numbers_in_diary # => ["07954625842","23659845125"]

# 8. pulls only the numbers 11 digits long from entries
my_diary = Diary.new
entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
entry2 = DiaryEntry.new("hello this is my first entry 07956595842 and this is another number 23659845125")
entry3 = DiaryEntry.new("i ate 46 potatoes today")
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.add_diary_entry(entry3)
my_diary.find_numbers_in_diary # => ["07954625842", "07956595842", "23659845125"]

# 9. pulls the longest entry that does not exceed the max words that can be read
my_diary = Diary.new
entry1 = DiaryEntry.new("hello " * 39)
entry2 = DiaryEntry.new("goodbye " * 25)
entry3 = DiaryEntry.new("bonjour " * 65)
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.add_diary_entry(entry3)
my_diary.reading_chunk(20, 2) # => ["hello " * 39]

# 10. returns string if no entries can be read in the time available. 
my_diary = Diary.new
entry1 = DiaryEntry.new("hello " * 39)
entry2 = DiaryEntry.new("goodbye " * 25)
entry3 = DiaryEntry.new("bonjour " * 65)
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.add_diary_entry(entry3)
my_diary.reading_chunk(20, 1) # => "Sorry, you don't have enough time."

# 10. if multiple entries can be read pull one entry, sorted alphabetically.
my_diary = Diary.new
entry1 = DiaryEntry.new("hello " * 39)
entry2 = DiaryEntry.new("goodbye " * 25)
entry3 = DiaryEntry.new("bonjour " * 65)
entry4 = DiaryEntry.new("allo " * 65)
my_diary.add_diary_entry(entry1)
my_diary.add_diary_entry(entry2)
my_diary.add_diary_entry(entry3)
my_diary.add_diary_entry(entry4)
my_diary.reading_chunk(20, 4) # => "allo " * 65

## 4. Create Examples as unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Diary Class


# 2. Returns empty array when no todos have been added yet
my_diary = Diary.new
my_diary.all_todos # => []

# 3. Raises error if no diary entries have been found
my_diary = Diary.new
my_diary.reading_chunk(2, 3) # => error: no diary entries have been added


# 4. Raises error if not diary entries have been found
my_diary = Diary.new
my_diary.find_numbers_in_diary # => error: no diary entries have been added

#whats happens if text isn't entered

DiaryEntry Class

# 1. Shows contents of entry when contents method is called
my_entry = DiaryEntry.new("hello " * 39)
my_entry.contents # => ("hello " * 39)


# 2. Shows word count of entry
my_entry = DiaryEntry.new("hello " * 39)
my_entry.count_words # => 39

Todo Class

# 1. Shows contents of todo when contents method is called
new_todo = Todo.new("wash the car")
new_todo.contents # => "wash the car"


```ruby
# EXAMPLE

# Constructs a track
track = Track.new('Carte Blanche', 'Veracocha')
track.title # => 'Carte Blanche'





```


_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.