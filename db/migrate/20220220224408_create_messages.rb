class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :sender_user_id
      t.text :message
      t.integer :item_id

      t.timestamps
    end
  end
end
