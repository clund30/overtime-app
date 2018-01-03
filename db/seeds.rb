User.create(email: "test@test.com",
            password: "test123",
            password_confirmation: "test123",
            first_name: "Fake",
            last_name: "User"
            )

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content")
end

puts "100 Posts have been created"