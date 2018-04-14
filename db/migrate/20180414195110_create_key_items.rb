class CreateKeyItems < ActiveRecord::Migration[5.2]
  def change
    create_table :key_items do |t|
      t.string :name
      t.string :description
      t.references :location, foreign_key: true
      t.text :details
      t.string :slug

      t.timestamps
    end
  end
end
