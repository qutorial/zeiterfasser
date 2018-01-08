class AddIndexToEintrags < ActiveRecord::Migration[5.1]
  def change
    add_index :eintrags, [:user_id, :kosten_traeger_id, :date], unique: true
  end
end
