require 'make_snippet'

RSpec.describe "creates a small snippet of a diary entry ending with ..." do
  it "shortens the diary entry to 5 words" do
  expect(make_snippet("hello diary, this is my first entry. I hope this is the first of many.")).to eq("hello diary, this is my...")
  end
end