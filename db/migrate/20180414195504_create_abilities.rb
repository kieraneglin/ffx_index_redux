class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :ability_type
      t.references :item, foreign_key: true
      t.integer :item_amount
      t.string :effect
      t.string :slug

      t.timestamps
    end
  end
end
