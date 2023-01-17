class Game < ApplicationRecord
  # validates
  validates :name, :category, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100,
    allow_nil: true
  }
  # custome validation
  validate :validate_parent
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

  private

  def validate_parent
    errors.add(:parent_id, "should be null") if category == "main_game" && parent_id

    return unless category == "expansion" && Game.find_by(id: parent_id).nil?

    errors.add(:parent, "Should be valid game")
  end
end
