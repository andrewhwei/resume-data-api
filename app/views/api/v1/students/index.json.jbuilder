json.students @students do |student|
  json.student student

  json.capstone student.capstone
  json.experiences student.experiences
  json.educations student.educations
  json.skills student.skills
end