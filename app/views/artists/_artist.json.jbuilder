json.extract! artist, :id, :name, :facebook_link, :intagram_link_string, :spotify_link, :donation_link, :hire_link, :genre, :profile_picture, :created_at, :updated_at
json.url artist_url(artist, format: :json)
