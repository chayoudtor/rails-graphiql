module Types
  class QueryType < BaseObject
    
    field :links,     [LinkType],     null: false
    field :link,      LinkType,     null: false do
      argument :id, ID, required: true
    end

    field :brands,    [BrandType],    null: false
    field :brand,     BrandType,    null: false do
      argument :id, ID, required: true
    end

    field :orders,    [OrderType],    null: false
    field :order,     OrderType,    null: false do
      argument :id, ID, required: true
    end

    field :products,  [ProductType],  null: false
    field :product,   ProductType,  null: false do
      argument :id, ID, required: true
    end

    field :members,  [MemberType],  null: false
    field :member,   MemberType,  null: false do
      argument :id, ID, required: true
    end
    field :member_name,   [MemberType],  null: false do
      argument :name, String, required: true
    end
    field :member_email,   [MemberType],  null: false do
      argument :email, String, required: true
    end
    field :member_auth,   [MemberType],  null: false do
      argument :auth, String, required: true
    end

    def links
      Link.all
    end

    def link(id:)
      Link.find(id)
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

    def brands
      Brand.all
    end

    def brand(id:)
      Brand.find(id)
    end

    def orders
      Order.all
    end

    def order(id:)
      Order.find(id)
    end

    def members
      Member.all
    end

    def member(id:)
      Member.find(id)
    end

    def member_name(name:)
      Member.where(name: name).all
    end

    def member_email(email:)
      Member.where(email: email).all
    end

    def member_auth(auth:)
      Member.where(auth: auth).all
    end
  end
end