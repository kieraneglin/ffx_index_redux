json.(@item, :id, :name, :effect, :effect_type, :slug)

json.mixes @item.get_mixes do |mix_item|
  json.(mix_item.mix, :id, :name, :slug)
end

if @item.abilities.present?
  json.abilities @item.abilities do |ability|
    json.(ability, :id, :name, :ability_type, :effect, :item_amount, :slug)
  end
else
  json.abilities nil
end

if @item.bribe_drops.present?
  json.bribe_drops @item.bribe_drops do |bribe_drop|
    json.(bribe_drop, :amount, :cost)

    json.monster do
      json.(bribe_drop.monster, :id, :name, :slug)
    end
  end
else
  json.bribe_drops nil
end

if @item.kill_drops.present?
  json.kill_drops @item.kill_drops do |kill_drop|
    json.(kill_drop, :amount, :rare)

    json.monster do
      json.(kill_drop.monster, :id, :name, :slug)
    end
  end
else
  json.kill_drops nil
end

if @item.steal_drops.present?
  json.steal_drops @item.steal_drops do |steal_drop|
    json.(steal_drop, :amount, :rare)

    json.monster do
      json.(steal_drop.monster, :id, :name, :slug)
    end
  end
else
  json.steal_drop nil
end
