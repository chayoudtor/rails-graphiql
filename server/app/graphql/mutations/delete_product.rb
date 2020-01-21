module Mutations
    class DeleteProduct < BaseMutation
        argument :id, ID, required: true

        type Types::ProductType

        def resolve(id:)
            Product.find(id).destroy
        end
    end
end