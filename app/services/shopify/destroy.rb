# frozen_string_literal: true

module Shopify
  class Destroy < Base
    def run
      shopify_product_id = ShopifyAPI::Product.find(@product.external_id).id

      ShopifyAPI::Product.delete(shopify_product_id.to_i)
    end
  end
end
