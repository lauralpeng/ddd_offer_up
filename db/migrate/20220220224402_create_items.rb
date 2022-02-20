class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :category_id
      t.integer :seller_user_id
      t.float :price
      t.text :description
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
