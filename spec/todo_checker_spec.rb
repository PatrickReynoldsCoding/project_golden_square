require 'todo_checker'

RSpec.describe ' todo_checker method' do
 context 'given a empty string' do
   it 'returns fail' do
      expect{ todo_checker("") }.to raise_error "No text entered."
   end
 end
 context 'text has a #TODO keyword inside it' do
    it 'returns true' do
      expect(todo_checker("#TODO brush my teeth")).to eq true
    end
  end
 context 'text does not have #TODO keyword inside it' do
    it 'returns false' do
      expect(todo_checker("#GRATITUDE I have food")).to eq false
    end
  end
 context 'text has not all-caps #TODO keyword inside it' do
    it 'returns false' do
      expect(todo_checker("#Todo brush my teeth")).to eq false
    end
  end
end