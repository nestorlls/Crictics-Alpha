class Critic < ApplicationRecord
  # Association
  belongs_to :user, counter_cache: true
  belongs_to :criticable, polymorphic: true

  # after_create :increment_critics_count
  # after_destroy :decrement_critics_count

  # private

  # def increment_critics_count
  #   critic_user = user
  #   critic_user.critics_count += 1
  #   critic_user.save
  # end

  # def decrement_critics_count
  #   critic_user = user
  #   critic_user.critics_count -= 1
  #   critic_user.save
  # end
end
