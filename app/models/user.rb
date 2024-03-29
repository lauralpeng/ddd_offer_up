class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :messages,
             foreign_key: "sender_user_id",
             dependent: :destroy

  has_many   :items,
             foreign_key: "seller_user_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
