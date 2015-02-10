class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     	t.string :name
     	t.string :email
      t.boolean :is_admin
      t.string :hashed_password

      t.timestamps null: false
    end
  end
end
