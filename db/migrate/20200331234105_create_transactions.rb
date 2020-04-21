class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :message
      t.float :offered_value
      t.references :gift

      t.timestamps
    end
  end
end
