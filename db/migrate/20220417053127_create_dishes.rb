class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :buy_again
      t.string :restaurant
      t.string :image

      t.timestamps
    end
  end
end
