# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  date          :string
#  location      :string
#  event_picture :string
#  buy_link      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Event < ApplicationRecord
  has_many :artist_has_events
  has_many :artists, through: :artist_has_events
end
