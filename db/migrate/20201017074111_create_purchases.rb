class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :uid
      t.string :user_uid
      t.string :merchant_uid
      t.string :location_uid
      t.datetime :purchased_at
      t.decimal :amount, precision: 8, scale: 2
      t.timestamps
    end
  end
end
