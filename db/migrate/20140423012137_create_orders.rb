class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :purchaser
      t.text :email
      t.boolean :payment_status
      t.boolean :delivery_status

      t.timestamps
    end
  end
end
