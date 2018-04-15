json.array! @locations do |location|
  json.(location, :id, :name, :slug)
end
