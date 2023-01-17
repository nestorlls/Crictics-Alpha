class InvolvedCompany < ApplicationRecord
  # Validation
  validates :developer, :publisher, inclusion: { in: [true, false] }
  validates :company,
            uniqueness: { scope: :game, message: " and Game combination it's already been taken" }
  # Association
  belongs_to :company
  belongs_to :game
end
