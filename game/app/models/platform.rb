class Platform < ActiveRecord::Base
  validates :name, presence: true
  has_many :vgame_platforms, dependent: :destroy
end
