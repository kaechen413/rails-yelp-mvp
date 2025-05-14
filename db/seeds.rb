require 'faker'
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "deleting all the records"
Restaurant.destroy_all

puts "creating 10 records"
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone.gsub(/\D/, ''),
    category: Restaurant::CATEGORY.sample
  )
end

puts "done!"
