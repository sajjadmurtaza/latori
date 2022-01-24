# frozen_string_literal: true

module Shopify
  class Create < Base
    def run
      shopify_product = ShopifyAPI::Product.new(title: @product.title, description: @product.description,
                                                price: @product.price)

      if shopify_product.save
        @product.update(external_id: shopify_product.id)

        variant = shopify_product.variants.first

        variant.description = @product.description
        variant.price = @product.price

        variant.save
      end
    end
  end
end
