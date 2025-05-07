class Review < ApplicationRecord
  belongs_to :restaurant
  # what is the restaurant id named and how do we declare it
  # what about redirection on invalidity
  validates :rating, inclusion: { in: [0,1,2,3,4,5] },  numericality: {only_integer: true}, presence: true
  # validates :rating, inclusion: { in: (0..5).to_a }
  validates :content, presence: true
end
