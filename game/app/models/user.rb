class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  has_many :reviews, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :guides, dependent: :destroy
  has_many :posts, dependent: :destroy
end
