module Mutations
    class DeleteMember < BaseMutation
        argument :id, ID, required: true

        type Types::MemberType

        def resolve(id:)
            Member.find(id).destroy
        end
    end
end