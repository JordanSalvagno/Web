class Topic < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :user
  belongs_to :vgame
  has_many :posts
end
