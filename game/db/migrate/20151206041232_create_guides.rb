class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.string :fname
      t.references :user, index: true, foreign_key: true
      t.references :vgame, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
