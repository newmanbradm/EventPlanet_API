class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.text :image_url
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
