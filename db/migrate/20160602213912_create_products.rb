class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.float :price

      t.timestamps null: false
    end
  end
end
