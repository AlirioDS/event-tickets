json.extract! event, :id, :name, :category, :description, :price, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
