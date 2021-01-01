require "pry"

class Song
<<<<<<< HEAD

  @@count=0
  @@artists= []
  @@genres= []
=======
  @@count=0
  @@artists= []
  @@genres= []
  @@artist_count= {}
  @@genre_count= {}
>>>>>>> 04fe2f220ee075a627d6c15b620627744087d371

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@artists << artist
    @@genres << genre
<<<<<<< HEAD
=======

    if @@genre_count == {}
      @@genre_count["#{genre}"]= []
      @@genre_count["#{genre}"] << name
    elsif @@genre_count.keys.include?("#{genre}")
      @@genre_count["#{genre}"] << name
    else
      @@genre_count["#{genre}"]= []
      @@genre_count["#{genre}"] << name
    end
>>>>>>> 04fe2f220ee075a627d6c15b620627744087d371
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
<<<<<<< HEAD
    genre_count=Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count=Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end
=======
    new_genre_count={}
    songs_by_genre= @@genre_count.values
    songs_array= songs_by_genre.collect {|i| i.count}
    songs_array.map.with_index do |element, index|
        new_genre_count[@@genre_count.keys[index]]= ""
        new_genre_count[@@genre_count.keys[index]] << element
    end
    new_genre_count
    binding.pry
  end


>>>>>>> 04fe2f220ee075a627d6c15b620627744087d371
end
