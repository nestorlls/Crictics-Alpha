class Genre < ApplicationRecord
  # Validates
  validates :name, presence: true, uniqueness: true
  # Association
  has_and_belongs_to_many :games
end
