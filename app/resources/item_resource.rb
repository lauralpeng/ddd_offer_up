class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :item_name, :string
  attribute :category_id, :integer
  attribute :seller_user_id, :integer
  attribute :price, :float
  attribute :description, :string
  attribute :location, :string
  attribute :image, :string

  # Direct associations

  belongs_to :category

  belongs_to :seller_user,
             resource: UserResource

  has_many   :messages

  # Indirect associations

end
