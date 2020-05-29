class AddOfferedToGifts < ActiveRecord::Migration[6.0]
  def change
    add_column :gifts, :offered, :boolean, default: :false
  end
end
