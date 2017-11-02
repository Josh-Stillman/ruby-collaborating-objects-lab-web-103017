require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject {|fn| fn.start_with?(".") }
  end

  def import
    song_list = files
    song_list.each {|file| Song.new_by_filename(file)
    }

  end

end
