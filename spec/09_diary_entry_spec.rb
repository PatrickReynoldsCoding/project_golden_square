require '09_diary_entry'

RSpec.describe DiaryEntry do
  it 'Shows contents of entry when contents method is called' do
    my_entry = DiaryEntry.new("hello " * 39)
    expect(my_entry.contents).to eq("hello " * 39)
  end
  it 'Shows word count of entry' do
    my_entry = DiaryEntry.new("hello " * 39)
    expect(my_entry.count_words).to eq(39)
  end

end