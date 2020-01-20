module Types
    class OrderType < BaseObject
        field :id,          ID,             null: false
        field :name,        String,         null: false
        field :product,     String,         null: true
        field :amount,      Integer,        null: true
        field :updated_at,  String,         null: false
    end
end