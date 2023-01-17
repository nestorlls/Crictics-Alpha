class Platform < ApplicationRecord
  # validates
  validates :name, :cagetory, presence: true
  validates :name, uniqueness: true
  # Association
  has_and_belongs_to_many :games
  # Enum
  enum category: {
    console: 0,
    arcade: 1,
    platform: 2,
    operating_system: 3,
    portable_console: 4,
    computer: 5
  }
end
