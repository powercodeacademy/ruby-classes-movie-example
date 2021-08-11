class Movie
  attr_reader :name
  attr_accessor :genre, :year

  @@count = 0
  @@genres = []
  @@movies = []

  def initialize(name, genre, year)
    @name = name
    @genre = genre
    @year = year
    @@count += 1
    @@genres << genre
    @@movies << self
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.movies
    @@movies
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.key? genre
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end
end

# Failure/Error: expect(Movie.count).to eq(3)

# NoMethodError:
# undefined method `count' for Movie:Class

# Failure/Error: expect(troll_2.genre).to eq('Comedy')

# NoMethodError:
#   undefined method `genre' for #<Movie:0x00007fd264838810 @name="Troll 2">