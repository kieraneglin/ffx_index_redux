class AddWaterToElements < ActiveRecord::Migration[5.2]
  def change
    add_column :elements, :water, :float
  end
end
