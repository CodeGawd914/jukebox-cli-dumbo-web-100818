#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/CodeGawd914/jukebox-cli-dumbo-web-100818/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end



def list(my_songs)
  my_song.each {|song,spot| puts song }
end

def play(my_songs)
  puts "Please enter a song name:"
  answer = gets.chomp
  my_songs.each do |song,spot|
    if answer == song
      system 'open' + spot
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
   help
  answer = ""
  while answer != "exit"
    puts "Please enter a command:"
    answer = gets.chomp
    case answer
    when "play"
      play(song)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end