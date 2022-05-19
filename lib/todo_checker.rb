def todo_checker(text)
  fail "No text entered." if text.empty?
  if text.include?("#TODO")
    return true 
 else
    return false
 end
end