class Movie < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :director, presence: true
  validates :release_date, presence: true
  validates :rating, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader

  searchable do
    string :title
  end

  def editable_by?(user)
    user == user
  end
end
