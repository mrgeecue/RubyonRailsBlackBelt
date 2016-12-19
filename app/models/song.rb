class Song < ActiveRecord::Base
  has_many :added_songs
  has_many :users, through: :added_songs
end
