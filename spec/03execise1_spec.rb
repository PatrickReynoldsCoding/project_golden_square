require '03execise1'

RSpec.describe " time_to_read method" do
  context "given an empty string" do
    it "returns 'there is no text'" do
    
      expect(time_to_read("")).to eq("there is no text")
    end
  end

context "given under 200 words" do
    it "returns 'this text will take 1 min to read'" do
    
      expect(time_to_read("helo this is some text")).to eq("this text will take 1 min to read")
    end
  end

context "given 20000 words" do
    it "returns 'this text will take 100 min to read'" do
    
      expect(time_to_read("hello " * 20000)).to eq("this text will take 100 min to read")
    end
  end

context "given 201 words" do
    it "returns 'this text will take 2 min to read'" do
    
      expect(time_to_read("hello " * 201)).to eq("this text will take 2 min to read")
    end
  end

context "given 300 words" do
    it "returns 'this text will take 2 min to read'" do
    
      expect(time_to_read("hello " * 300)).to eq("this text will take 2 min to read")
    end
  end
end