class CreateClowns < ActiveRecord::Migration[5.2]
  def change
    create_table :clowns do |t|
      t.string :name
      t.integer :weight
      t.boolean :creepy

      t.timestamps
    end
  end
end
