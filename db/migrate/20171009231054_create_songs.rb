class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :song_order
      t.string :song_label
      t.string :song_duration

      t.timestamps
    end
  end
end
