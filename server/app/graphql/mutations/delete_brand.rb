module Mutations
    class DeleteBrand < BaseMutation
        argument :id, ID, required: true

        type Types::BrandType

        def resolve(id:)
            Brand.find(id).destroy
        end
    end
end