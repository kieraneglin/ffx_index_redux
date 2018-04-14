class CreateMixes < ActiveRecord::Migration[5.2]
  def change
    create_table :mixes do |t|
      t.string :name
      t.string :description
      t.string :slug

      t.timestamps
    end
  end
end
