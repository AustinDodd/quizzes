class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
