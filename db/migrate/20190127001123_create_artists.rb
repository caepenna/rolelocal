class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :facebook_link
      t.string :intagram_link_string
      t.string :spotify_link
      t.string :donation_link
      t.string :hire_link
      t.string :genre
      t.string :profile_picture

      t.timestamps
    end
  end
end
