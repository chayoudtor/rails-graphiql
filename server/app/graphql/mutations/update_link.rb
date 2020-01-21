module Mutations
    class UpdateLink < BaseMutation
        argument :id,           ID,     required: true
        argument :description,  String, required: false
        argument :url,          String, required: false

        type Types::LinkType

        def resolve(id:, **attributes)
            Link.find(id).tap do |link|
                if attributes != nil
                    link.update!(attributes)
                end
            end
        end
    end
end