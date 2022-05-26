class TodoList
  def initialize
    @todolist = []
    @completed = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todolist << todo
  end

  def incomplete
    # Returns all non-done todos
    incomplete = []
    @todolist.each do |entry|
      if entry.done? == false
        incomplete.push(entry)
      end
    end
    return incomplete
  end

  def complete
    # Returns all complete todos
    
    @todolist.each do |entry|
      if entry.done? == true
        @completed.push(entry)
      end
    end
    return @completed
  end

  def give_up!
    # Marks all todos as complete
    @todolist.each do |entry|
      entry.mark_done!
      #@completed.push(entry)
    end
  end
end