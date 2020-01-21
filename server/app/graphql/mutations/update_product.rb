module Mutations
    class UpdateProduct < BaseMutation
        argument :id,           ID,         required: true
        argument :name,         String,     required: true
        argument :description,  String,     required: false
        argument :amount,       Integer,    required: false

        type Types::ProductType

        def resolve(id: , **attributes)
            Product.find(id).tap do |product|
                if attributes != nil
                    product.update!(attributes)
                end
            end
        end
    end
end