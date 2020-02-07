class Song < ActiveRecord::Base
  has_many :notes
  belongs_to :artist
  belongs_to :genre
  accepts_nested_attributes_for :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
  
  def artist_name
    self.artist ? self.artist.name : nil
  end 

  # def genre_name=(id)
  #   self.genre = Genre.find_or_create_by(id: )
  # end

  # def genre_name
  #   self.genre ? self.genre.id : nil
  # end

end
