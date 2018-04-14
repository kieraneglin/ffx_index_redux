json.array! @monsters do |monster|
  json.(monster, :id, :name, :slug)
end
