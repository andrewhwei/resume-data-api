json.array!(@api_v1_skills) do |api_v1_skill|
  json.extract! api_v1_skill, :id
  json.url api_v1_skill_url(api_v1_skill, format: :json)
end
