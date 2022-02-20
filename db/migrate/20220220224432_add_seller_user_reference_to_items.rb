class AddSellerUserReferenceToItems < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :items, :users, column: :seller_user_id
    add_index :items, :seller_user_id
    change_column_null :items, :seller_user_id, false
  end
end
