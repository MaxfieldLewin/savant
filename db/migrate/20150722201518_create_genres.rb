class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :genre_name
      t.timestamps null: false
    end

    change_table :songs do |t|
      t.integer :genre_id
    end
    
  end
end
