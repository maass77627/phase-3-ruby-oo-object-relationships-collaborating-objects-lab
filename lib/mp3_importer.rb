require 'pry'

class MP3Importer
 attr_accessor :path

def initialize(path)
    @path = path
end

def files
    # self
    Dir.glob("**/*.mp3").map {|file| file.split("/")[3]}
#  binding.pry

end

def import
    files.each do |file|
        Song.new_by_filename(file)
    # binding.pry
    end
end







end