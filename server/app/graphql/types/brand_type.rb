module Types
    class BrandType < BaseObject
        field :id,          ID,         null: false
        field :name,        String,     null: false
        field :amount,      Integer,    null: false
        field :updated_at,  String,     null: false
        field :created_at,  String,     null: false
    end
end