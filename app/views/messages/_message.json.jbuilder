json.extract! message, :id, :sender_user_id, :message, :item_id, :created_at,
              :updated_at
json.url message_url(message, format: :json)
