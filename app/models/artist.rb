# == Schema Information
#
# Table name: artists
#
#  id                   :integer          not null, primary key
#  name                 :string
#  facebook_link        :string
#  intagram_link_string :string
#  spotify_link         :string
#  donation_link        :string
#  hire_link            :string
#  genre                :string
#  profile_picture      :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Artist < ApplicationRecord
  has_many :artist_has_events
  has_many :events, through: :artist_has_events
end
