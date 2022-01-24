# frozen_string_literal: true

module Shopify
  class Base
    attr_accessor :product, :shop

    def initialize(product)
      @product = product
      @shop = shop
    end

    private

    def shop
      ShopifyAPI::Shop.current
    end
  end
end
