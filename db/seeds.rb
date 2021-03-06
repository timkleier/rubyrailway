# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@ourapp.com', admin: true)

Resource.scrape("http://www.railscasts.com", { skill_level: "intermediate", ruby_or_rails: "rails" })
Resource.scrape('http://gorails.com', { skill_level: "intermediate", ruby_or_rails: "rails" })
Resource.scrape('http://guides.rubyonrails.org/', { skill_level: "intermediate", ruby_or_rails: "rails" })
Resource.scrape('http://codeschool.com', { skill_level: "varied", ruby_or_rails: "both" })
Resource.scrape('http://railstutorial.org/book', { skill_level: "beginner", ruby_or_rails: "rails" })
Resource.scrape('http://rubyweekly.com', { skill_level: "advanced", ruby_or_rails: "ruby" })
Resource.scrape('http://awesome-ruby.com', { skill_level: "varied", ruby_or_rails: "both" })

MetaTag.create(meta_type: :resource_type, name: 'Tutorial')
MetaTag.create(meta_type: :resource_type, name: 'Course')
MetaTag.create(meta_type: :resource_type, name: 'Screencast')
MetaTag.create(meta_type: :resource_type, name: 'Book')

MetaTag.create(meta_type: :skill_level, name: 'All')
MetaTag.create(meta_type: :skill_level, name: 'Beginner')
MetaTag.create(meta_type: :skill_level, name: 'Intermediate')
MetaTag.create(meta_type: :skill_level, name: 'Advanced')