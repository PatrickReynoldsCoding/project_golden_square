class GrammarStats
  def initialize
    @true = 0
    @false = 0
  end

  def check(text)
   fail "fail: please enter string" if text.is_a? Integer
      if text[-1].include?(".") && text[0].match?(/\A[A-Z]/)
        @true = @true + 1 
        return true
       
      else
        @false = @false + 1
        return false 
      end

  end
  

  def percentage_good
    return "#{((@true.to_f/(@true.to_f + @false.to_f)) * 100).ceil.to_i}% true"
  end

end