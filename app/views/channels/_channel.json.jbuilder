json.extract! channel, :id, :name, :webhook_url, :created_at, :updated_at
json.url channel_url(channel, format: :json)
