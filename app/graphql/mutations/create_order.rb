module Mutations
    class CreateOrder < BaseMutation
        argument :name,     String,     required: true
        argument :product,  String,     required: true
        argument :amount,   Integer,    required: true

        type Types::OrderType

        def resolve(name: nil, product: nil, amount: nil)
            Order.create!(
                name: name,
                product: product,
                amount: amount
            )
        end
    end
end