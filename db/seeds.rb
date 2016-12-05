
# Default User
u = User.new(
  username:              'Ted Sappington',
  email:                 'tedsappington@gmail.com',
  password:              'password',
  password_confirmation: 'password'
)
u.skip_confirmation!
u.save!


# Another User
u = User.new(
  username:              'Jim Morrison',
  email:                 'jim@morrison.com',
  password:              'password',
  password_confirmation: 'password'
)
u.skip_confirmation!
u.save!


# Items, for Default User
5.times do
  Item.create!(
    name:  Faker::Name.title,
    user_id: 1
  )
end


puts "Seed complete"
puts "#{User.count} users created"
puts "#{Item.count} items created"
