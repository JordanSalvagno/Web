class Review < ActiveRecord::Base
  validates :title, presence: true
  validates :reviewtext, presence: true
  validates :rating, presence: true
  belongs_to :user
  belongs_to :vgame
end
