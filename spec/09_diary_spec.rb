require '09_diary'

RSpec.describe Diary do
  it 'Returns empty array when no todos have been added yet' do
    my_diary = Diary.new
    expect(my_diary.all_todos).to eq([])
  end
  it 'Raises error if no diary entries have been found when running reading_chunk' do
    my_diary = Diary.new
    expect { my_diary.reading_chunk(2, 3) }.to raise_error "error: no diary entries have been added"
  end
  it 'Raises error if no diary entries have been found when running find_number' do
    my_diary = Diary.new
    expect { my_diary.find_numbers_in_diary }.to raise_error "error: no diary entries have been added"
  end
end