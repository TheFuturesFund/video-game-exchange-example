class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.text :contact_info
      t.string :image

      t.timestamps
    end
  end
end
