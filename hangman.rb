=begin

Write a program hangman.rb that contains a function called hangman. The function's parameters are a word and an array of letters. It returns a string showing the letters that have been guessed. Call the function from within your program so that you know that it works.

Example: hangman("bob",["b"]) should evaluate to "b_b" Example: hangman("alphabet",["a","h"]) should return "a__ha___"

input is a string and array of string
should returrn string with arrya of letters filled in and ___ if lettes not guessed

=end


def hangman(word, array_of_letters)
    array_of_word = word.chars
    result = ''
    #iterate over ^ this array to check if array_of_letters exists
    array_of_word.each do |word_letter|
      #iterate over array_of letters
      match = false
      array_of_letters.each do |guess_letter|
        if word_letter == guess_letter
          match=true
          result+=guess_letter
          break
        end
      end
      
      if match == false
          result+="_"
      end
    end
      #if does, put letter, 
       #if not exist put a _
     result
  end
  
  
  puts hangman("bob",["b"])