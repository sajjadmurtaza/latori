# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    title { 'MyString' }
    description { 'MyText' }
    image { nil }
    price { 1.5 }
  end
end
