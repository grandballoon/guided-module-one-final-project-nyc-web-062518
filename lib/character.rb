class Character < ActiveRecord::Base
  has_many :movie_characters
  has_many :movies, through: :movie_characters
  belongs_to :actor 
end
