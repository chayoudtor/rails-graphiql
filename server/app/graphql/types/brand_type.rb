module Types
    class BrandType < BaseObject
        field :id,      ID,         null: false
        field :name,    String,     null: false
        field :amount,  Integer,    null: false
    end
end