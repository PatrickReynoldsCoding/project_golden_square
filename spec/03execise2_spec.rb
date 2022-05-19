require '03execise2'

RSpec.describe ' grammar_check method' do
#  context 'given a string not starting with a capital or ending with a fullstop' do
#    it 'add capital and fullstop' do
#      expect(grammar_check("hello.")).to eq "hello."
#    end
#  end
 context 'given a string, checks if ends with a fullstop' do
   it 'returns true' do
     expect(grammar_check("Hello, my name is Patrick.")).to eq true
   end
     it 'returns false' do
     expect(grammar_check("Hello, my name is Patrick")).to eq false
   end
 end
 context 'given a string, checks if starts with capital letter' do
   it 'returns true' do
     expect(grammar_check("Hello, my name is Patrick.")).to eq true
   end
     it 'returns false' do
     expect(grammar_check("hello, my name is Patrick.")).to eq false
   end
 end
end