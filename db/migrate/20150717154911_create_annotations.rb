class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :song_fragment_id, null: false
      t.text :contents, null: false
      t.timestamps null: false
    end

    add_index :annotations, :song_fragment_id, unique: true
  end
end
