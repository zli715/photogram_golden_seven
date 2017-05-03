class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :source
      t.string :caption

      t.timestamps
    end
  end
end
