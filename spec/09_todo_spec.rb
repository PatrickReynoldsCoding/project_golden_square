require '09_todo'

RSpec.describe Todo do

  it 'Shows contents of todo when contents method is called' do
    new_todo = Todo.new("wash the car")
    expect(new_todo.contents).to eq("wash the car")
  end


end