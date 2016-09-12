class VgamePlatform < ActiveRecord::Base
  belongs_to :vgame
  belongs_to :platform
end
