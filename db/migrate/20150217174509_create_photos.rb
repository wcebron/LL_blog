class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.date :photo_date
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :posts
  end
end
