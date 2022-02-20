class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many   :messages,
             foreign_key: :sender_user_id

  has_many   :items,
             foreign_key: :seller_user_id

  # Indirect associations
end
