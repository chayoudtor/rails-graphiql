module Mutations
    class DeleteOrder < BaseMutation
        argument :id, ID, required: true

        type Types::OrderType

        def resolve(id:)
            Order.find(id).destroy
        end
    end
end