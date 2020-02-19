# require 'faker'
# Restaurant.destroy_all

puts 'Creating reviews...'

Restaurant.all.each do |restaurant|
  3.times do
    Review.create!(
      content: Faker::Movies::BackToTheFuture.quote,
      rating: rand(0..5),
      restaurant: restaurant
    )
  end
end

puts 'Finished!'
