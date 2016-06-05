VERSION = 1

Rails.application.routes.draw do
  namespace :api do
    VERSION.times do |n|
      namespace "v#{n + 1}".to_sym do
        resources :students, :capstones, :educations, :experiences, :skills
      end
    end
  end
end