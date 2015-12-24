# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = %w[alice bob carol donald elizabeth]

names.each do |name|
  cat = Cat.create(name: name.titleize, clicks: 0)
  File.open(Rails.root + 'public' + "#{name}.jpg") do |f|
    cat.image = f
  end
  cat.save!
end
