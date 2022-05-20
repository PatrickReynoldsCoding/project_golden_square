# {{PROBLEM}} Method Design Recipe
## 1. Describe the Problem
>As a user
>So that I can improve my grammar
>I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


## 2. Design the Method Signature


```ruby
sentence_clean = grammar_check(sentence)

# sentence is a string fed into the grammar_check method ("hello, my name is Patrick")
# sentence_clean should return the original sentence with capital letters and punctuation if none is found  ("Hello, my name is Patrick.")


```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
grammar_check("hello, my name is Patrick")
# => false

# 2
grammar_check("Hello, my name is Patrick.")
# => true

# 3
grammar_check("why is this wet?")
# => false

# 4
grammar_check(2)
# => false


```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._