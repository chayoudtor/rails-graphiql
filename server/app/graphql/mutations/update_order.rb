module Mutations
    class UpdateOrder < BaseMutation
        argument :name,     ID,     required: true
        argument :product,  String, required: false
        argument :amount,   String, required: false

        type Types::OrderType

        def resolve(id:, **attributes)
            Order.find(id).tap do |order|
                if attributes != nil
                    order.update!(attributes)
                end
            end
        end
    end
end