class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, presence: true
  validates :description, presence: true
  validates :director, presence: true
  validates :release_date, presence: true
  validates :rating, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader



  def editable_by?(user)
    user == user
  end

  def average_raty
    if comments.size > 0
      raty_sum = 0
      comments.each do |c|
        raty_sum = c.raty + raty_sum
      end
      x = raty_sum/comments_count
      x.round(1)
    else
      0
    end
  end
end
