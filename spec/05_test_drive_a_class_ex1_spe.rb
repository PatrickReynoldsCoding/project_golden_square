# require '05_test_drive_a_class_ex1'

RSpec.describe DiaryEntry do
  it "constructs" do
    my_diary = DiaryEntry.new("my title", "my content")
    expect(my_diary.title).to eq("my title")
  end
  it "returns the contents" do
    my_diary = DiaryEntry.new("my title", "my content")
    expect(my_diary.contents).to eq("my content")
  end
  
 
  describe "count_words method" do
    it "counts the words in content" do
      my_diary = DiaryEntry.new("my title", "my content")
      expect(my_diary.count_words).to eq(2)
    end
  end

  describe "reading_time" do
    context "given a number of wpm" do
      it "returns the reading time" do
        my_diary = DiaryEntry.new("my title", "my content")
        expect(my_diary.reading_time(1)).to eq(2)
      end  
    end
    context "given a value other than a positive number" do
      it "returns an error" do
        my_diary = DiaryEntry.new("my title", "my content is this string here")
        expect { my_diary.reading_time("hello") } .to raise_error "reading speed much be above 0"
      end  
    end
  end

  describe "reading chunk method" do
    it "returns a chunk of text that the use can read in the time specified" do
      my_diary = DiaryEntry.new("my title", "my content is this string here")
      expect(my_diary.reading_chunk(2, 1)).to eq("my content is this")
    end  
  end
end