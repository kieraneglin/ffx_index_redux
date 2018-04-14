class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.references :monster, foreign_key: true
      t.float :fire
      t.float :thunder
      t.float :ice
      t.float :thunder

      t.timestamps
    end
  end
end
