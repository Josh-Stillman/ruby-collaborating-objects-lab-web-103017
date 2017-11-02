class Artist

@@artists = []
@@all = []

def self.all
  @@all
end

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @@artists << self
  @songs = []
  self.save
end

  def self.find_or_create_by_name(name)
    sought_artist = @@artists.select{|element| element.name == name}
    if sought_artist == []
      self.new(name)
    else
      sought_artist[0]
    end
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
