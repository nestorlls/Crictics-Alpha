class Genre < ApplicationRecord
  has_and_belongd_to_many :games
end
