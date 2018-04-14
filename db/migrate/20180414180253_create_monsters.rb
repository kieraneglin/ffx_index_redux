class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :slug
      t.integer :health
      t.integer :overkill
      t.integer :strength
      t.integer :defense
      t.integer :magic
      t.integer :magic_defense
      t.integer :mp
      t.integer :agility
      t.integer :luck
      t.integer :ap
      t.integer :evasion
      t.integer :accuracy
      t.integer :gil
      t.boolean :boss
      t.string :notes

      t.timestamps
    end
  end
end
