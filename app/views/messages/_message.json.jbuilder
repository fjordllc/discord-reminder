json.extract! message, :id, :title, :schedule, :body, :channel_id, :created_at, :updated_at
json.url message_url(message, format: :json)
