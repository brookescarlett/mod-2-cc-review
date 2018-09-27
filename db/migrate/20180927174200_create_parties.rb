class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :host
      t.belongs_to :clown, foreign_key: true

      t.timestamps
    end
  end
end
