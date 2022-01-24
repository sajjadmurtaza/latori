# Shopify App

Ruby Version: 3.0.0

Rails Version: 7.0.1

Simple Shopify APP to create, update and destroy products.

### Key files

    
    app
    ├── controller
    │        └── products_controller
    │
    ├── models                    
    |      └── product
    |
    ├── services/shopify
    │      ├── base (parents class with common methods)
    │      ├── create (to create the product on shopify app)
    │      ├── update (to update the product on shopify app)
    |      └── create (to destroy the product on shopify app)
    |
    └──  initializer
            └── shopify.rb configurations

    and .env file
    