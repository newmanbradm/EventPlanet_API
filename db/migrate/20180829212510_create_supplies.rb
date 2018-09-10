class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string :name
      t.float :price
      t.text :store_url
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
