names = [0]

100.times do |n|

  name = 0
  while names.include? name
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    name = (first_name + last_name).downcase
  end
  names << name
   
  Student.create first_name: first_name, 
                  last_name: last_name,
                      email: Faker::Internet.free_email(name),
                   password: '111111',
               phone_number: Faker::PhoneNumber.phone_number, 
                  short_bio: Faker::Hipster.paragraph, 
               linkedin_url: "www.linkedin.com/in/#{name}",
             twitter_handle: "@#{Faker::Superhero.name}", 
              wordpress_url: "#{name}.wordpress.com", 
                 resume_url: "resume.com/#{name}",  
                 github_url: "www.github.com/#{name}",
                      photo: Faker::Avatar.image
  
  Capstone.create   student_id: (n + 1), 
                          name: Faker::App.name, 
                   description: Faker::Hipster.sentence,
                           url: "#{Bazaar.heroku}.heroku.com",
                    screenshot: Faker::Company.logo

  year = (1980..2008).to_a.sample
  object = Bazaar.object.downcase
  location = Bazaar.super_object.downcase
  a = ['a','e','i','o','u'].include?(location[0]) ? 'an' : 'a'
 
  Education.create  student_id: (n + 1),
                    start_date: year.to_s, 
                      end_date: (year + 4 + [0,0,0,1].sample).to_s, 
                        degree: Faker::Superhero.power, 
               university_name: Faker::University.name, 
                       details: "I studied #{object}s on #{a} #{location}."

  Experience.create student_id: (n + 1), 
                    start_date: (2016 - rand(3)).to_s, end_date: '2016', 
                     job_title: Faker::Company.profession, 
                  company_name: Faker::Company.name, 
                       details: Faker::Company.catch_phrase

  Skill.create name: "#{Faker::Hacker.ingverb} #{Faker::Hacker.noun}"

  SkilledStudent.create student_id: (n + 1), skill_id: (n + 1)
end