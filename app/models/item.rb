class Item < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  belongs_to :category,
             :counter_cache => true

  belongs_to :seller_user,
             :class_name => "User",
             :counter_cache => true

  has_many   :messages,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    item_name
  end

end
