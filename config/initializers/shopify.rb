# frozen_string_literal: true

require 'shopify_api'

shop_url = "https://#{ENV['API_KEY']}:#{ENV['PASSWORD']}@#{ENV['SHOP_NAME']}.myshopify.com"
ShopifyAPI::Base.site = shop_url
ShopifyAPI::Base.api_version = '2020-01'
