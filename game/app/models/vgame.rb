class Vgame < ActiveRecord::Base
  validates :name, :description, :genre, :release,  presence: true
  has_many :guides, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :vgame_platforms, dependent: :destroy
  
  def generate_filename
    string = SecureRandom.hex(20) + ".jpg"
    update fname: string
  end
  
end
