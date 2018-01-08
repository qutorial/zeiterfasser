class CreateKostenTraegers < ActiveRecord::Migration[5.1]
  def change
    create_table :kosten_traegers do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
