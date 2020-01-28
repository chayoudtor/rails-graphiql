module Mutations
    class UpdateMember < BaseMutation
        argument :id,           ID,         required: true
        argument :name,         String,     required: true
        argument :email,        String,     required: true
        argument :auth,         String,     required: false
        argument :username,     String,     required: false

        type Types::MemberType

        def resolve(id:, **attributes)
            Member.find(id).tap do |member|
                if attributes != nil
                    member.update!(attributes)
                end
            end
        end
    end
end