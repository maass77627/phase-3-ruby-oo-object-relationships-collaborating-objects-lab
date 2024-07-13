class Artist

    @@all = []
attr_accessor :name, :songs

def initialize(name)
    @name = name
    # @songs = []
    @@all << self
end

def self.all
    @@all

end

def songs
Song.all.select {|song| song.artist == self}
end

def add_song(song)
    song.artist = self

end

def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name = name}
    if artist
        artist
    else 
        artist = Artist.new(name)
        artist
    end


end

def print_songs
    self.songs.each do |song|
   puts song.name
end
end






end