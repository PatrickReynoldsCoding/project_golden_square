def time_to_read(text)
  if text == ""
    return "there is no text"
  else
    minutes_reading = (text.split(" ").length/200.to_f).ceil
    return "this text will take #{minutes_reading} min to read"
  end
end