module Mutations
    class CreateMember < BaseMutation
        argument :name,         String,     required: true
        argument :auth,         String,     required: true
        argument :username,     String,     required: true

        type Types::MemberType

        def resolve(name: nil, auth: nil, username: nil)
            Member.create!(
                name: name,
                auth: auth,
                username: username
            )
        end
    end
end