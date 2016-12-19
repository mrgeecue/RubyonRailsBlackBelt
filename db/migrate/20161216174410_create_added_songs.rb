class CreateAddedSongs < ActiveRecord::Migration
  def change
    create_table :added_songs do |t|
      t.references :user, index: true
      t.references :song, index: true

      t.timestamps
    end
  end
end
