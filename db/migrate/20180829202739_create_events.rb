class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :rain_date
      t.text :description
      t.text :contact_details
      t.integer :budget
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
