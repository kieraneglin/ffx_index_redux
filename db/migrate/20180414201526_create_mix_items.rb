class CreateMixItems < ActiveRecord::Migration[5.2]
  def change
    create_table :mix_items do |t|
      t.references :mix, foreign_key: true
      t.integer :item_one_id
      t.integer :item_two_id

      t.timestamps
    end
  end
end
