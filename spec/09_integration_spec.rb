require '09_diary'
require '09_diary_entry'
require '09_todo'

RSpec.describe Diary do
  it 'returns an entry if new entry object has been created' do
  my_diary = Diary.new
  entry1 = DiaryEntry.new("hello this is my first entry")
  my_diary.add_diary_entry(entry1) 
  expect(my_diary.all_diary_entries).to eq(["hello this is my first entry"])
  end
 
  it 'returns multiple entries if multiple objects have been created' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello this is my first entry")
    entry2 = DiaryEntry.new("hello this is my second entry")
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    expect(my_diary.all_diary_entries).to eq(["hello this is my first entry", "hello this is my second entry"])
  end

  it 'returns todo if new todo object has been created' do
    my_diary = Diary.new
    todo1 = Todo.new("wash the car")
    my_diary.add_todo(todo1)
    expect(my_diary.all_todos).to eq(["wash the car"])
  end
  it 'returns todo if new todo object has been created' do
    my_diary = Diary.new
    todo1 = Todo.new("wash the car")
    my_diary.add_todo(todo1)
    expect(my_diary.all_todos).to eq(["wash the car"])
  end
 it 'returns multiple todos if multiple todos have been created & added' do
    my_diary = Diary.new
    todo1 = Todo.new("wash the car")
    todo2 = Todo.new("clean the dishes")
    my_diary.add_todo(todo1)
    my_diary.add_todo(todo2)
    expect(my_diary.all_todos).to eq(["wash the car", "clean the dishes"])
  end
 it 'pulls all phone numbers from entries if one entry has been created' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
    my_diary.add_diary_entry(entry1)
    expect(my_diary.find_numbers_in_diary).to eq(["07954625842"])
  end
 it 'pulls all phone numbers even if there are multiples from entries if one entry has been created' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello this is my first entry 07954625842 and this is another number 23659845125")
    my_diary.add_diary_entry(entry1)
    expect(my_diary.find_numbers_in_diary).to eq(["07954625842" , "23659845125"])
  end
 it 'pulls all phone numbers from entries if multiple entries have been created' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
    entry2 = DiaryEntry.new("hello this is my second entry 23659845125")
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    expect(my_diary.find_numbers_in_diary).to eq(["07954625842","23659845125"])
  end
 it 'pulls only the numbers 11 digits long from entries' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello this is my first entry 07954625842")
    entry2 = DiaryEntry.new("hello this is my first entry 07956595842 and this is another number 23659845125")
    entry3 = DiaryEntry.new("i ate 46 potatoes today")
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    my_diary.add_diary_entry(entry3)
    expect(my_diary.find_numbers_in_diary).to eq(["07954625842", "07956595842", "23659845125"])
  end
 it 'pulls the longest entry that does not exceed the max words that can be read' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello " * 39)
    entry2 = DiaryEntry.new("goodbye " * 25)
    entry3 = DiaryEntry.new("bonjour " * 65)
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    my_diary.add_diary_entry(entry3)
    expect(my_diary.reading_chunk(20, 2)).to eq("hello " * 39)
  end
 it 'returns string if no entries can be read in the time available.' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello " * 39)
    entry2 = DiaryEntry.new("goodbye " * 25)
    entry3 = DiaryEntry.new("bonjour " * 65)
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    my_diary.add_diary_entry(entry3)
    expect(my_diary.reading_chunk(20, 1)).to eq("Sorry, you don't have enough time.")
  end
 it 'returns string if no entries can be read in the time available.' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello " * 39)
    entry2 = DiaryEntry.new("goodbye " * 25)
    entry3 = DiaryEntry.new("bonjour " * 65)
    entry4 = DiaryEntry.new("allo " * 65)
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    my_diary.add_diary_entry(entry3)
    my_diary.add_diary_entry(entry4)
    expect(my_diary.reading_chunk(20, 4)).to eq("allo " * 65)
  end

   it 'returns string if no entries can be read in the time available.' do
    my_diary = Diary.new
    entry1 = DiaryEntry.new("hello " * 39)
    entry2 = DiaryEntry.new("goodbye " * 25)
    entry3 = DiaryEntry.new("bonjour " * 65)
    entry4 = DiaryEntry.new("allo " * 65)
    entry5 = DiaryEntry.new("adios " * 65)
    my_diary.add_diary_entry(entry1)
    my_diary.add_diary_entry(entry2)
    my_diary.add_diary_entry(entry3)
    my_diary.add_diary_entry(entry4)
    my_diary.add_diary_entry(entry5)
    expect(my_diary.reading_chunk(20, 4)).to eq("adios " * 65)
  end
end