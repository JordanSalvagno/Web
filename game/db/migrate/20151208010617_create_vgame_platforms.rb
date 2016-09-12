class CreateVgamePlatforms < ActiveRecord::Migration
  def change
    create_table :vgame_platforms do |t|
      t.references :vgame, index: true, foreign_key: true
      t.references :platform, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
