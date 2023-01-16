class Company < ApplicationRecord
  # Assiociations
  has_many :involved_companies, dependent: :destroy
  has_many :games, through: :involved_companies

  # Associations with criticable
  has_many :critics, as: :criticable, dependent: :destroy
end
