class CreateExhibits < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibits do |t|
      t.text :photo
      t.string :artist

      t.timestamps
    end
  end
end
