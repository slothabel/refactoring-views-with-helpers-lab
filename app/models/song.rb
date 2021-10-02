class Song < ActiveRecord::Base
  belongs_to :artist

  # def artist_name
  #   binding.pry
  #   self.artist ? self.artist.name : nil
  # end

  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by(name: name)
  # end
  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
end
