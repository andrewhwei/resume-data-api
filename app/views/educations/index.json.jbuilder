  json.array!(@educations) do |education|
    json.array! student.educations.each do |education|
      json.id education.id
      json.start_date education.start_date
      json.end_date education.end_date
      json.degree education.degree
      json.university_name education.university_name
      json.details education.details
    end
  end