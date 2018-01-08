class AddMoreIndexToKtrs< ActiveRecord::Migration[5.1]
  def change
    add_index :kosten_traegers, :code, unique: true
  end
end
