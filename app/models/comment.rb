class Comment < ActiveRecord::Base
  belongs_to :movie, counter_cache: :comments_count
  validates :comment, presence: true
  validates :raty, presence: true
end
