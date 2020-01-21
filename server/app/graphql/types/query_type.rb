module Types
  class QueryType < BaseObject
    
    field :links,     [LinkType],     null: false
    field :brands,    [BrandType],    null: false
    field :orders,    [OrderType],    null: false
    field :products,  [ProductType],  null: false
    field :product,   [ProductType],  null: false

    def links
      Link.all
    end

    def products
      Product.all
    end

    def product(id)
      Product.find(id)
    end

    def brands
      Brand.all
    end

    def orders
      Order.all
    end
  end
end