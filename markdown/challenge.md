# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

task = todo_checker(text)

# text is the string that may contain a task
# task is a boolean and lets us no true or false if the text includes the text #TODO

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#1
todo_checker("")
# => "No text entered"

#2
todo_checker("#TODO brush my teeth")
# => true

#3
todo_checker("#GRATITUDE I have food")
# => false

#4
todo_checker("#Todo brush my teeth")
# => false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._