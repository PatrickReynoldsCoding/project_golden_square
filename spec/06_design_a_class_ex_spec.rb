require '06_design_a_class_ex'

RSpec.describe ToDoList do
  context "when the @list array is empty" do
    it "returns all tasks complete" do
      my_jobs = ToDoList.new
      expect(my_jobs.list).to eq("All tasks complete.")
    end
  end

  context "if a task is added" do 
    it "returns task when add method is called" do
      my_jobs = ToDoList.new
      my_jobs.add("clean car")
      expect(my_jobs.list).to eq("clean car")
    end
  end

  context "if multiple tasks are added" do 
    it "returns all tasks when add method is called" do
      my_jobs = ToDoList.new
      my_jobs.add("clean car")
      my_jobs.add("wash dog")
      expect(my_jobs.list).to eq("clean car\nwash dog")
    end
  end
end