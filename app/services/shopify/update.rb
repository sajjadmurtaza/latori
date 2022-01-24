# frozen_string_literal: true

module Shopify
  class Update < Base
    def run
      shopify_product = ShopifyAPI::Product.find(@product.external_id).variants.first

      shopify_product.title = @product.title
      shopify_product.description = @product.description
      shopify_product.price = @product.price

      shopify_product.save
    end
  end
end
