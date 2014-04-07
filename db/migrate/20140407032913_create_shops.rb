class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :postcode
      t.string :phone
      t.string :fax
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
