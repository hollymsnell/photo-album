class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :location
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
