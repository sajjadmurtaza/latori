# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
                                  title: 'Title',
                                  description: 'MyText',
                                  image: nil,
                                  price: 2.5
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
  end
end
