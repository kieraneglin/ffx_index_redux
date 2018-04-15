json.array! @items do |item|
  json.(item, :id, :name, :effect, :slug)
end
