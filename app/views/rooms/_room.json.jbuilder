json.extract! room, :id, :name, :user_id, :message_id, :created_at, :updated_at
json.url room_url(room, format: :json)
