class Comment < ActiveRecord::Base
  belongs_to :movie, counter_cache: :comments_count
  belongs_to :user
  validates :comment, presence: true
  validates :raty, presence: true
end
