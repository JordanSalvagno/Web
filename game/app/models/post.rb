class Post < ActiveRecord::Base
  validates  :message, presence: true
  belongs_to :topic
  belongs_to :user
end
