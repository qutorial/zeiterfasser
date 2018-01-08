class CreateEintrags < ActiveRecord::Migration[5.1]
  def change

    drop_table :eintrags if ActiveRecord::Base.connection.table_exists? 'eintrags'

    create_table :eintrags do |t|
      t.references :kosten_traeger, foreign_key: true
      t.integer :duration
      t.date :date
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
