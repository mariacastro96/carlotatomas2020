class AddHiddenToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :hidden, :boolean, default: :false
  end
end
