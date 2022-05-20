## 1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


## 2. Design the Method Signature


```ruby
minutes_reading = time_to_read(text_word_count)

* text_word_count is an integer given to the time_to_read method (30452)
* minutes_reading is the time it takes to read the text " 153 mins
'''

3. 

```ruby

# 1
time_to_read(200)
# => "this text will take 1 min to read"

# 2
time_to_read(20000)
# => "this text will take 100 min to read"

# 3
time_to_read(201)
# => "this text will take 1 min to read"

# 4
time_to_read(300)
# => "this text will take 1 min to read"


# 5
time_to_read(301)
# => "this text will take 2 min to read"

```