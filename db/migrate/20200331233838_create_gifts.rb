class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.integer :category
      t.string :name
      t.string :code_name
      t.float :total_value
      t.integer :number_of_tranches
      t.float :tranch_value
      t.integer :offered_tranches
      t.float :offered_value
      t.float :missing_value

      t.timestamps
    end
  end
end
