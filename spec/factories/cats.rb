FactoryGirl.define do
  factory :cat do
    sequence(:name) { |n| "Cat #{n}" }
    clicks 0
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'cat.jpg')) }
  end
end
