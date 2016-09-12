class Guide < ActiveRecord::Base
  require 'securerandom'
  validates :title, :fname, presence: true
  belongs_to :user
  belongs_to :vgame

  def generate_filename
    string = SecureRandom.hex(20) + ".txt"
    update fname: string
  end
end
