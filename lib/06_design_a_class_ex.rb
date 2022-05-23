class ToDoList

  def initialize
    @list = []
  end

  def add(task)
    @list.push(task)
  end

  def list
    if @list == []
      return "All tasks complete."
    else 
      return @list.join("\n")
    end
  end

end
