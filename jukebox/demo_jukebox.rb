class Song
  def initialize(title, artist, duration)
    @title = title
    @artist = artist
    @duration = duration
    @plays = 0
  end

  attr_accessor :title, :artist, :duration

  def to_s
    "#{ title } (#{ duration }s)"
  end

  def play
    @plays += 1
  end
end


class Jukebox
  def initialize
    @catalog = []
    @playing_queue = []
  end

  attr_accessor :catalog, :playing_queue

  def display_catalog
    catalog.each_with_index do |song, index|
      puts "#{ index + 1 }. #{ song }"
    end
  end

  def display_playing_queue
    playing_queue.each_with_index do |song, index|
      puts "#{ index + 1 }. #{ song }"
    end
  end

  def add_song_to_catalog(song)
    @catalog << song
  end

  def add_song_to_queue(song)
    @playing_queue << song
  end
end


jukebox = Jukebox.new

loop do
  puts "1. Show catalog"
  puts "2. Queue song"
  puts "x. Exit"

  input = gets.chomp.downcase
  break if input == 'x'

  index = input.to_i
  next if index == 0

  case index do
    when 1:
      jukebox.display_catalog
    when 2:
      jukebox.display_playing_queue
  end
end
