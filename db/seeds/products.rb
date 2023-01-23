20.times do |i|
  Product.create!(
    name: "Producto #{i}",
    image: "https://images.com/producto-#{i}.jpg",
    price: rand(10.0..1000.0),
    currency: "USD",
    quantity: i
  )
end