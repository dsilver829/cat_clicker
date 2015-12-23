# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cat = Cat.create(name: 'Cat', clicks: 0)
File.open(Rails.root + 'public' + 'cat.jpg') do |f|
  cat.image = f
end
cat.save!

chewie = Cat.create(name: 'Chewie', clicks: 0)
File.open(Rails.root + 'public' + 'chewie.jpg') do |f|
  chewie.image = f
end
chewie.save!
