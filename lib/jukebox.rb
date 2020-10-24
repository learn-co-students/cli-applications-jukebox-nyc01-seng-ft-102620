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
  input = gets.strip
  array.each_with_index do |song, index|
    if input == "#{song}" || input.to_i == index + 1
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again."
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  response = gets.strip
  if response == "exit"
    exit_jukebox
  elsif response == "help"
    help
  elsif response == "list"
    list(array)
  elsif response == "play"
    play(array)
  end 
end
