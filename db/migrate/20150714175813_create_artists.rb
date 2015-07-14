class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.text :description
      t.integer :verified_user_id
      t.integer :photo_id

      t.timestamps null: false
    end

    add_index :artists, :name
  end
end
