Capstone.create!([
  {student_id: 1, name: "JamCircle", description: nil, url: nil, screenshot: nil}
])
Education.create!([
  {student_id: 1, start_date: nil, end_date: nil, degree: nil, university_name: "Harvard", details: nil}
])
Experience.create!([
  {student_id: 1, start_date: nil, end_date: nil, job_title: nil, company_name: "Google", details: nil}
])
Skill.create!([
  {name: "Ruby"}
])
SkilledStudent.create!([
  {student_id: 1, skill_id: 1}
])
Student.create!([
  {first_name: "dude", last_name: nil, email: nil, password: nil, phone_number: nil, short_bio: nil, linkedin_url: nil, twitter_handle: nil, wordpress_url: nil, resume_url: nil, github_url: nil, photo: nil}
])
