class Category < ApplicationRecord
  # Direct associations

  has_many   :items,
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end

end
