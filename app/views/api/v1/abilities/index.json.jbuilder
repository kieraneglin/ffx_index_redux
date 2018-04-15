json.array! @abilities do |ability|
  json.(ability, :id, :name, :ability_type, :effect, :slug)

  if ability.item
    json.item do
      json.(ability.item, :id, :name, :slug)
      json.amount ability.item_amount
    end
  else
    json.item nil
  end
end
