module Mutations
    class CreateMember < BaseMutation
        argument :name,         String,     required: true
        argument :email,        String,     required: true
        argument :auth,         String,     required: true
        argument :username,     String,     required: true

        type Types::MemberType

        def resolve(name: nil, email: nil, auth: nil, username: nil)
            Member.create!(
                name: name,
                email: email,
                auth: auth,
                username: username
            )
        end
    end
end