def same_check (userId, password)
  if userId == password
    true
  else
    false
  end
end

# puts same_check("bob", "cow")
def long_enough input
  if input.length > 6
    true
  else
    false
  end
end

# puts long_enough("vegetable")

def does_not_contain_special input
  if input.include?("$") || input.include?("!") || input.include?("#")
    false
  else
    true
  end
end

# puts does_not_contain_special("hello")

def contains_special input
  if input.include?("$") || input.include?("!") || input.include?("#")
    true
  else
    false
  end
end

# puts contains_special("hello")

def has_digit password
  if password =~ /\d/
    true
  else
    false
  end
end

def has_upper_and_lower password
  if(password.downcase > password && password.upcase < password)
    true
  else
    false
  end
    #That means that there is at least 1 uppercase letter
end



def passwordchecker
  userId = gets.chomp
  password = gets.chomp
  if contains_special(password) && does_not_contain_special(userId) && long_enough(userId) && long_enough(password) && has_digit(password) && has_upper_and_lower(password) && !same_check(userId, password)
    puts "Your login is valid"
  else
    puts "Your login is not valid"
  end
end

   passwordchecker
