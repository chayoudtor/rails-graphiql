module Types
  class QueryType < BaseObject
    
    field :links,     [LinkType],     null: false
    field :products,  [ProductType],  null: false
    field :brands,    [BrandType],    null: false

    def links
      Link.all
    end

    def products
      Product.all
    end

    def brands
      Brand.all
    end
  end
end