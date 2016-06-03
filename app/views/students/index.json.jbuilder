json.array! @students do |student|
  json.id student.id
  json.first_name student.first_name
  json.last_name student.last_name
  json.email student.email
  json.password student.password
  json.phone_number student.phone_number
  json.short_bio student.short_bio
  json.linkedin_url student.linkedin_url
  json.twitter_handle student.twitter_handle
  json.wordpress_url student.wordpress_url
  json.resume_url student.resume_url
  json.github_url student.github_url
  json.photo student.photo

  json.partial! 'tea.json.jbuilder', tea: tea

  json.educations do
    json.array! student.educations.each do |education|
      json.id education.id
      json.start_date education.start_date
      json.end_date education.end_date
      json.degree education.degree
      json.university_name education.university_name
      json.details education.details
    end
  end

  json.experiences do
    json.array! student.experiences.each do |experience|
      json.id experience.id
      json.start_date experience.start_date
      json.end_date experience.end_date
      json.degree experience.job_title
      json.university_name experience.company_name
      json.details experience.details
    end
  end

  json.skills do
    json.array! student.skills.each do |skill|
      json.id skill.id
      json.name skill.name
    end
  end

end