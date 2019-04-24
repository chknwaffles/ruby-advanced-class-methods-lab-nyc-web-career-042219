require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    self.all << song
    song
  end
  
  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    if song = self.find_by_name(name)
      return song
    else
      self.create_by_name(name)
    end
  end
  
  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end
  
  def self.new_from_filename(mp3)
    song = self.new
    filename = mp3.split(" - ")
    song.artist_name = filename[0]
    song.name = filename[1].chomp(".mp3")
    song
  end
  
  def self.create_from_filename(mp3)
    song = self.new_from_filename(mp3)
    song.save
  end
  
  def self.destroy_all
    self.all.clear
  end
=======
    if !self.find_by_name(name)
      self.create_by_name(name)
    end
    song
  end
>>>>>>> 38c892e9f6633b33011de8149965a4a98a48d01d
end
