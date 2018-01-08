class AddIndexToKtrs < ActiveRecord::Migration[5.1]
  def change
    add_index :kosten_traegers, [:code, :name], unique: true
  end
end
