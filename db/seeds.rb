Movie.destroy_all
List.destroy_all

50.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::Avatar.image,
    rating: rand(0.0..10.0)
  )
end

10.times do
  List.create(
    name: Faker::Name.name
  )
end

puts "Created #{Movie.count} movies !"
puts "Created #{List.count} lists !"
