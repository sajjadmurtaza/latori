# frozen_string_literal: true

%w[Cream Shampp Laptop Glass Phone].each do |product|
  product = Product.find_or_create_by(title: product, description: "#{product} description", price: rand(1..10))

  ::Shopify::Create.new(product).run
end

p '--------- Done! ---------'
