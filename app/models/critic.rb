class Critic < ApplicationRecord
  # Association
  belongs_to :user
  belongs_to :criticable, polymorphic: true
end
