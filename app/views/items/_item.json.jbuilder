json.extract! item, :id, :item_name, :category_id, :seller_user_id, :price,
              :description, :location, :image, :created_at, :updated_at
json.url item_url(item, format: :json)
