json.(@location, :id, :name, :slug)

json.monsters @location.monsters do |monster|
  json.(monster, :id, :name, :slug)
end

json.key_items @location.key_items do |item|
  json.(item, :id, :name, :description, :slug)
end
