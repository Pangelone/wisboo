19.times do |i|
  Purchase.create!(
    quantity: i,
    total_amount: i,
    currency: "USD",
    product_id: i + 1,
    user_id: i + 1,
  )
end