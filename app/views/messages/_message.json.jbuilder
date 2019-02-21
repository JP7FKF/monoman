json.extract! message, :id, :item_id, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
