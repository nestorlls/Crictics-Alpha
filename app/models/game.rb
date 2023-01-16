class Game < ApplicationRecord
  # Associations
  has_many :involved_companies, dependent: :destroy
  has_many :companies, through: :involved_companies
  has_and_belongs_to_many :platforms, dependent: :destroy
  has_and_belongs_to_many :genres, dependent: :destroy
  # Self join
  has_many :expansions, class_name: "Game",
                        foreign_key: "parent_id",
                        inverse_of: "parent",
                        dependent: :destroy
  belongs_to :parent, class_name: "Game", optional: true
  # Association with criticable
  has_many :critics, as: :criticable, dependent: :destroy
  # Enum
  enum category: { main_game: 0, expansion: 1 }
end
