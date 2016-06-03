json.array!(@api_v1_educations) do |api_v1_education|
  json.extract! api_v1_education, :id
  json.url api_v1_education_url(api_v1_education, format: :json)
end
