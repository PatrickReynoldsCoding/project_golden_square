def grammar_check(sentence)
  if sentence[-1].include?(".") && sentence[0].match?(/\A[A-Z]/)
    return true 
  else 
    return false 
  end
end