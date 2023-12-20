class CreateBreads < ActiveRecord::Migration[7.0]
  def change
    create_table :breads do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
