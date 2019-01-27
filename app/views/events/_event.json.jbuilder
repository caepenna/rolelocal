json.extract! event, :id, :date, :location, :event_picture, :buy_link, :created_at, :updated_at
json.url event_url(event, format: :json)
