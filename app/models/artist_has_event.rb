class ArtistHasEvent < ApplicationRecord
  belongs_to :event
  belongs_to :artist
end
