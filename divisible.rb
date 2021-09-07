=begin

Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns.

=end



def method
    holdNumbers = []
    1.upto(100) do
      |num| 
      if num % 2 == 0 || num % 3 == 0 || num % 5 == 0
        holdNumbers.push(num)
      end
    end
    puts holdNumbers
end

method