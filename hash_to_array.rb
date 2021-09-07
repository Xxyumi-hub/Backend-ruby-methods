=begin

Write a program that collects 5 keys and 5 values from the user, and stores them in a hash. *Write a function that accepts the hash as optional parameters* and prints out an array of keys and an array of values. Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?) Call this program hash_to_array.rb.

=end

def get_keys_and_values
    count = 0
    num_of_times = 5
    hash_holder = {}
    while count < num_of_times
      puts "Enter a key"
      key = gets.chomp
      puts "enter a value"
      value = gets.chomp
      hash_holder.store(key,value)
      count +=1
    end
    hash_holder
  end
  
  our_hash = get_keys_and_values
  
  def printer(*args)
    print args[0].keys
    print args[0].values
  end
  
  printer(our_hash)