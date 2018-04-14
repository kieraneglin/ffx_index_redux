class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :effect
      t.string :effect_type
      t.string :slug

      t.timestamps
    end
  end
end
