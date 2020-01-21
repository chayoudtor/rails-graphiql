module Types
    class ProductType < BaseObject
        field :id,          ID,         null: false
        field :name,        String,     null: false
        field :description, String,     null: true
        field :amount,      Integer,    null: true
        field :updated_at,  String,     null: false
    end
end