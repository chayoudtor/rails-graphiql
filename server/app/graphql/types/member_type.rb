module Types
    class MemberType < BaseObject
        field :id,          ID,     null: false
        field :name,        String, null: false
        field :email,       String, null: false
        field :auth,        String, null: false
        field :username,    String, null: false
        field :created_at,  String, null: false
        field :updated_at,  String, null: false
    end
end