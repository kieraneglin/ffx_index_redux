json.(@ability, :id, :name, :ability_type, :effect, :slug)

if @ability.monster_drop_abilities.any?
  json.monster_drops @ability.monster_drop_abilities do |drop|
    json.(drop.monster, :id, :name, :slug)
  end
end

if @ability.item
  json.item do
    json.(@ability.item, :id, :name, :slug)
    json.item_amount @ability.item_amount
  end
else
  json.item nil
end
