class CreateVgames < ActiveRecord::Migration
  def change
    create_table :vgames do |t|
      t.string :fname,             null: false, default: "default.jpg"
      t.string :name
      t.text :description
      t.string :genre
      t.date :release
      t.string :developer

      t.timestamps null: false
    end
  end
end
