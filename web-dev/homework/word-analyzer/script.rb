# given list of words
words = ["level", "elephant", "ruby", "book", "hello"]

#count the total number of letters in string 
#loop thorugh words in list
#checking if its a palindrome
for word in words
    #store the original word in variable before changed 
    listed_word = word
  if word == word.reverse
    is_palindrome = "yes"
  else
    is_palindrome = "no"
  end

  # Checking if includes "e"
  if word.include?("e")
    has_e = "yes"
  else
    has_e = "no"
  end

  # change every 'ruby' with 'Python' string
  if word == "ruby"
    word = "python"
  end

  # Print within loop for every word in list
  puts "word: #{listed_word}"
  puts " - palindrome: #{is_palindrome}"
  puts " - contains 'e': #{has_e}"
  puts " - character count: #{word.length}"
  puts " - after replacement: #{word}"
end


