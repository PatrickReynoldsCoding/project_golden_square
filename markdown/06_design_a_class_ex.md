# {{PROBLEM}} Class Design Recipe
## 1. Describe the Problem
> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
>  I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Signature


```ruby
class ToDoList
  def initialize
    @list = []
  end

  def add(task)
  #task is a string that is added to @list array
  end

  def list
    #outputs the @list array with a new task on each line
    #if no tasks in array then output "All tasks complete."
  end

  def complete(task)
    #removes the completed task from the @list array
  end



end


```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
my_jobs = ToDoList.new
my_jobs.list # => "All tasks complete."

# 2
my_jobs = ToDoList.new
my_jobs.add("clean car")
my_jobs.list # => "clean car"

# 3
my_jobs = ToDoList.new
my_jobs.add("clean car")
my_jobs.add("wash dog")
my_jobs.list 
# => "clean car"
# => "wash dog"

# 4
my_jobs = ToDoList.new
my_jobs.add("clean car")
my_jobs.add("wash dog")
my_jobs.complete("wash dog")
my_jobs.list # => "clean car"

```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.