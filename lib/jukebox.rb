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
  songs.each.with_index(1) do |s, i| 
    puts "#{i}. #{s}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  output = ""
  songs.each.with_index(1) do |s, i|
    if input == s || i
      output << "Playing #{s}"
    end
    if input.to_i > 9
      output << "Invalid input, please try again"
    end
    if input != s
      output << "Invalid input, please try again"
    end
  end
  puts output
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  if input == "exit"
    exit_jukebox
  elsif input == "help"
    help
    run(songs)
  elsif input == "list"
    list(songs)
    run(songs)
  else
    play(songs)
    run(songs)
  end
end
