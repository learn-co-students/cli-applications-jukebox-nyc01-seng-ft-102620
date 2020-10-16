# Add your code here

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)
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

def list(songs) 
  songs.each_with_index do |song, index| 
    puts "#{index+1}. #{song}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip  
  if songs.include?(answer)
    puts "Playing #{answer}"
  elsif
    ((1..songs.size).include? answer.to_i)
    puts "Playing #{songs[answer.to_i - 1]}"
  else 
      puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  loop do 
    answer = gets.chomp 
    case answer
  when 
   "play"
      play(songs)
  when 
    "list"
      list(songs)
  when 
    "help"
      help
  when 
    "exit"
     exit_jukebox
    break
  end
end
end
