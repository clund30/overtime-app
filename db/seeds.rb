@user = User.create(email: "test@test.com",
            password: "test123",
            password_confirmation: "test123",
            first_name: "Jon",
            last_name: "Snow"
            )

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
            password: "asdfasdf", 
            password_confirmation: "asdfasdf", 
            first_name: "Admin", 
            last_name: "Name")

puts "1 Admin User created"

15.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "15 Posts have been created"