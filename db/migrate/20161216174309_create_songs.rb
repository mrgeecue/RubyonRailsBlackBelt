class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.integer :added_count

      t.timestamps
    end
  end
end
