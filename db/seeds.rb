require 'faker'

puts 'Generating urls'

90.times do |i|
  Url.create(
    original: Faker::Internet.url,
    slug: i.to_s(36),
    title: Faker::Book.title,
    visits: rand(100)
  )
end

puts 'Complete!'
