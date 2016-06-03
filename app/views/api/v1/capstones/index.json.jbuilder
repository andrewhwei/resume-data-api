json.array!(@capstones) do |capstone|
  json.id capstone.id
  json.name capstone.name
  json.description capstone.description
  json.url capstone.url
  json.screenshot capstone.screenshot
end
