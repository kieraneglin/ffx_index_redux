json.(@monster, :id, :name, :slug, :gil, :boss, :notes, :skills)

json.set! :locations do
  json.array! @monster.locations do |location|
    json.(location, :id, :name, :slug)
  end
end

json.stats do
  json.(
    @monster, 
    :health, 
    :overkill, 
    :strength, 
    :defense, 
    :magic, 
    :magic_defense,
    :mp,
    :agility,
    :luck,
    :ap,
    :evasion,
    :accuracy
  )
end

json.elements do
  json.(@monster.element, :water, :thunder, :fire, :ice)
end

json.drop_abilities do
  json.set! :weapons do
    json.array! @monster.monster_drop_abilities.where(ability_type: 'weapon') do |weapon|
      json.(weapon.ability, :id, :name, :slug)
    end
  end

  json.set! :armours do
    json.array! @monster.monster_drop_abilities.where(ability_type: 'armour') do |armour|
      json.(armour.ability, :id, :name, :slug)
    end
  end
end

if @monster.bribe_drop
  json.bribe_drop do
    json.name @monster.bribe_drop.item.name
    json.amount @monster.bribe_drop.amount
    json.cost @monster.bribe_drop.cost
    json.id @monster.bribe_drop.item.id
    json.slug @monster.bribe_drop.item.slug
  end
else
  json.bribe_drop nil
end

if @monster.kill_drops
  json.set! :kill_drops do
    json.array! @monster.kill_drops do |kill_drop|
      json.name kill_drop.item.name
      json.amount kill_drop.amount
      json.rare kill_drop.rare
      json.id kill_drop.item.id
      json.slug kill_drop.item.slug
    end
  end
else
  json.kill_drops nil
end

if @monster.steal_drops
  json.set! :steal_drops do
    json.array! @monster.steal_drops do |steal_drop|
      json.name steal_drop.item.name
      json.amount steal_drop.amount
      json.rare steal_drop.rare
      json.id steal_drop.item.id
      json.slug steal_drop.item.slug
    end
  end
else
  json.steal_drops nil
end
