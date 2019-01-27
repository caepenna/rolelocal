class CreateArtistHasEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_has_events do |t|
      t.references :event, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
