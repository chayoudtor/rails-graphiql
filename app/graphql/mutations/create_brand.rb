module Mutations
    class CreateBrand < BaseMutation
        argument :name,     String,     required: true
        argument :amount,   Integer,    required: false

        type Types::BrandType

        def resolve(name: nil, amount: nil)
            Brand.create!(
                name: name,
                amount: amount
            )
        end
    end
end