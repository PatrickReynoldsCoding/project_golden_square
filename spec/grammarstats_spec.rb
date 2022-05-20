require 'grammarstats'

RSpec.describe GrammarStats do
 context 'Check Method' do
   it "It returns true if the strings first character is a capital and the sentence ends with a '.'" do
    check_1 = GrammarStats.new
    result = check_1.check("This is a string.") 
     expect(result).to eq(true)
   end
 
   it "If returns false if the string doesn't include a capital as a first character or include a '.' " do
   check_1 = GrammarStats.new
   result = check_1.check("this is a string")
   expect(result).to eq false
   end

   


   it 'Test will fail is given a integer' do
     check_1 = GrammarStats.new
     expect { check_1.check(12) }.to raise_error "fail: please enter string"
   end
 end

 context 'check percentage_good method' do
    it "It outputs true" do
      check_1 = GrammarStats.new
      check_1.check("This is a string.")
      check_1.check("This is a string")
      check_1.check("This is a string")
      check_1.check("This is a string")
      result = check_1.percentage_good
      expect(result).to eq("25% true") 
    end
  end
  it "It outputs true" do
    check_1 = GrammarStats.new
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    result = check_1.percentage_good
    expect(result).to eq("100% true") 
  end
  it "It outputs true" do
    check_1 = GrammarStats.new
    check_1.check("This is a string.")
    check_1.check("This is a string.")
    check_1.check("This is a string")
    result = check_1.percentage_good
    expect(result).to eq("67% true") 
end
end

    

    

