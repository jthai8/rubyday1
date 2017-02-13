def numbers
  puts 3+4
  puts 5-8
  puts 2*7
  puts 8/9
  puts 10%9
  puts 0.0/0
end

def vars
  my_favorite_number = 8
  puts "My favorite number divied by 2 is #{my_favorite_number/2}"
  someone_elses = 13
  someone_elses = 7
  puts "My favorite number subtracted from someone else's is #{my_favorite_number-someone_elses}"
  my_favorite_number*=26
  puts my_favorite_number
end

def strings
  str = gets.chomp
  puts "Your input is: #{str}"
end

def favMovies
  favMovies = ["Master and Commander", "Spirited Away", "Memento", "Inglorious Basterds", "Don't Think Twice", "Chicago", "Hot Fuzz", "Step Brothers", "Love Actually", "The Lion King"]
  puts favMovies.select { |movie| movie=="The Lion King"||movie=="Inglorious Basterds"||movie=="Hot Fuzz"  }
  puts "--------"
  puts favMovies.length
  puts "--------"
  puts favMovies.reverse
  puts "--------"
  puts favMovies[7..9]
  puts "--------"
  puts favMovies.rotate()
  puts "--------"
  puts favMovies.rotate(-1)
  puts "--------"
  puts favMovies.sample
  puts "--------"
  puts favMovies.sample(5)
end

def counter
  for i in (20).downto(1)
    puts i
  end
end
# counter

def number_check
  number = gets.chomp.to_i
  if number < 11 && number > 0
    puts "Valid"
  else
    puts "Invalid"
  end
end
# number_check

def fizz_buzz
  for i in 1..100
    str = ""
    if i%3 == 0
      str+="fizz"
    end
    if i%5==0
      str+="buzz"
    end
    if(str.include?("fizz")||str.include?("buzz"))
      puts str
    else
      puts i
    end
  end
end

def sum_these_numbers (x, y)
  puts x + y
end

def is_even (x)
  if x%2 ==0
    puts "Is Even"
  else
    puts "Is Not Even"
  end
end

def array_function
  words = ["hello", "good", "bye", "adios"]
  words.each do |element|
    puts element.upcase
  end
end

def returns_something num
  num+3
end

def main_function
  puts returns_something 5
end

def day_month_year
  input = gets.chomp
  dateArray = input.split(" ")
  day = dateArray[0].to_i
  month = dateArray[1].to_i
  year = dateArray[2].to_i


  # day = gets.chomp.to_i
  # month = gets.chomp.to_i
  # year = gets.chomp.to_i
  valid = true
  if(day<=0||day>31)
    valid = false
  end
  if month <=0 || month > 12
    valid = false
  end
  if year < 0
    valid = false
  end
  if valid
    puts "The date #{day} #{month} #{year} is valid!"
  else
    puts "The date #{day} #{month} #{year} is invalid!"
  end
end

def rps_game
  gameOver = false
  while gameOver==false do
    puts "Player One! Enter your move: "
    player1 = gets.chomp.downcase
    puts "Player Two! Enter your move: "
    player2 = gets.chomp.downcase
    if player1==player2
      puts "Oh no! It's a tie!"
    elsif player1=="rock"&&player2=="scissors"
      puts "Player One wins, Rock vs Scissors!"
    elsif  player1=="scissors"&&player2=="paper"
      puts "Player One wins, Scissors vs Paper!"
    elsif  player1=="paper"&&player2=="rock"
      puts "Player One wins, Paper vs Rock!"
    elsif player2=="rock"&&player1=="scissors"
      puts "Player Two wins, Rock vs Scissors!"
    elsif  player2=="scissors"&&player1=="paper"
      puts "Player Two wins, Scissors vs Paper!"
    elsif  player2=="paper"&&player1=="rock"
      puts "Player Two wins, Paper vs Rock!"
    elsif player1=="exit"||player2=="exit"
      gameOver=true
    else
      puts "Oh no! One of your inputs was incorrect :("
    end
  end
  puts "Thanks for playing!!"
end

rps_game

# day_month_year
# main_function
# array_function
# is_even(8)
# sum_these_numbers(2, 3)
# fizz_buzz
# favMovies
# strings
# vars
# numbers
