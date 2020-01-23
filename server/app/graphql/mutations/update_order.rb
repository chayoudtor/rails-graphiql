module Mutations
    class UpdateOrder < BaseMutation
        argument :id,       ID,         required: true
        argument :name,     String,     required: true
        argument :product,  String,     required: false
        argument :amount,   Integer,    required: false

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