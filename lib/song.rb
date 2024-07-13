require 'pry'

class Song

@@all = []

attr_accessor :name, :artist

def initialize(name)
@name = name
@@all << self
end

def self.all
    @@all
end

def self.new_by_filename(file)
     newfile = file.split(' - ')
    #  binding.pry
    
     song_name = newfile[1]
     artist_name = newfile[0]
     song = self.new(song_name)
     song.artist_name=(artist_name)
     song
end

def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    self
end


end
