class CreateMacarons < ActiveRecord::Migration
  def change
    create_table :macarons do |t|
      t.string :name
      t.string :image_url
      t.decimal :price, precision: 12, scale: 3
      t.integer :stock

      t.timestamps null: false
    end
  end
end
