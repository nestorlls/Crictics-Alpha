class Game < ApplicationRecord
  has_many :involved_companies, dependent: :destroy
  has_many :companies, through: :involved_companies
  has_and_belongd_to_many :platforms, dependent: :destroy
  has_and_belongd_to_many :genres, dependent: :destroy
end
