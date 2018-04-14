class CreateMonsterDropAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :monster_drop_abilities do |t|
      t.references :monster, foreign_key: true
      t.references :ability, foreign_key: true
      t.string :ability_type

      t.timestamps
    end
  end
end
