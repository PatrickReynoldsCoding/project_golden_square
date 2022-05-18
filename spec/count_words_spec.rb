require 'count_words'

RSpec.describe "count number of words in string" do
    it "count number of words in string" do
    
    expect(count_words("hellos i am pair programming")).to eq(5)
    end
end