module Mutations
    class CreateProduct < BaseMutation
        argument :name,         String, required: true
        argument :description,  String, required: false
        argument :amount,       Integer, required: false

        type Types::ProductType

        def resolve(name: nil, description: nil, amount: nil)
            Product.create!(
                name: name,
                description: description,
                amount: amount
            )
        end
    end
end