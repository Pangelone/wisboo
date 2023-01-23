20.times do |i|
  User.create!(
    name: "Nombre #{i}",
    email: "Email#{i}@email.com"
  )
end