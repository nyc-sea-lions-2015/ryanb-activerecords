class Record < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  # attr_accessible :album_title, :artist, :genre, :owner_opinion, :release_year, :user_id

  validates :album_title, presence: true
  validates :artist, presence: true
  validates :genre, presence: true
  validates :release_year, presence: true
  validates :owner_opinion, presence: true
  
end
