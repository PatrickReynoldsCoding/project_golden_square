# {{PROBLEM}} CLASS Design Recipe
## 1. Describe the Problem
> As a user I wish to feed a program multiple strings.
> So that I can check if each is correctly punctuated 
> I want to see the % of correctly punctuated strings once I am finished using the program. 


## 2. Design the CLASS Signature


```ruby
check_1 = GrammarStats.new
check_1.check(text)


# The text parameter is a string that may or maynot have correct punctuation("This is a string").
# Check is a method that returns true or false.


```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
check_1 = GrammarStats.new
check_1.check("This is a string.")
# => output true

# 2
check_1 = GrammarStats.new
check_1.check(12)
# => output "fail: please enter string"

# 3
check_1 = GrammarStats.new
check_1.check("this is a string")
# => output false


# 4
check_1 = GrammarStats.new
check_1.check(true)
check_1.check(false)
check_1.check(false)
check_1.check(false)
check_1.percentage_good
# => output 25% (true)

# 5
check_1 = GrammarStats.new
check_1.check(true)
check_1.check(true)
check_1.check(true)
check_1.check(true)
check_1.percentage_good
# => output 100% (true)

# 6
check_1 = GrammarStats.new
check_1.check(true)
check_1.check(true)
check_1.check(false)
check_1.percentage_good
# => output 67% (true)

# 7
check_1 = GrammarStats.new
check_1.check(false)
check_1.check(false)
check_1.check(false)
check_1.check(false)
check_1.percentage_good
# => output 0% (true)

```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._




