class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :unity
      t.string :provider
      t.decimal :price
      t.string :code
      t.integer :id_user

      t.timestamps
    end
  end
end
