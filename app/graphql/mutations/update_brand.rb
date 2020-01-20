module Mutations
    class UpdateBrand < BaseMutation
        argument :name,     String,     required: true
        argument :amount,   Integer,    required: true

        type Types::BrandType

        def resolve(id:, **attributes)
            Brand.find(id).tap do |brand|
                if  attributes != nil
                    brand.update!(attributes)
                end
            end
        end
    end
end