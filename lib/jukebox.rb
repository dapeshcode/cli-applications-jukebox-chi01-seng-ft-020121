require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end 

def play(array)
  puts "Please enter a song name or number:" 
  user_input = gets.strip 
  
  unless (1..9).include?(user_input.to_i)  || array.include?(user_input) 
    puts "Invalid input, please try again"
  else 
    array.each_with_index do |song, index|
      if user_input == song || user_input.to_i == index + 1
        puts "Playing #{song}"
      end 
    end 
  end 
end 

def exit_jukebox
  puts "Goodbye"
end

def run(array)
puts "Please enter a command:"
user_input = gets.strip
until user_input != "exit"
case user_input 
when "help"
  help
  run(array)
when "list" 
  list(array)
  run(array)
when "play"
  play(array)
  run(array)
end 
if user_input == "exit"
  exit_jukebox
  break
end 
end 
end 



