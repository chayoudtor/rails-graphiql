module Mutations
    class DeleteLink < BaseMutation
        argument :id, ID, required: true

        type Types::LinkType

        def resolve(id:)
            Link.find(id).destroy
        end
    end
end