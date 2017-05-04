class CreateStylists < ActiveRecord::Migration[5.1]
  def change
    create_table :stylists do |t|
      t.string :name
      t.text :bio
      t.text :image

      t.timestamps
    end
  end
end
