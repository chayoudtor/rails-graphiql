module Types
  class MutationType < BaseObject

    # Create 
    field :create_link,     mutation: Mutations::CreateLink
    field :create_brand,    mutation: Mutations::CreateBrand
    field :create_product,  mutation: Mutations::CreateProduct

    # Update
    field :update_link,     mutation: Mutations::UpdateLink
    field :update_brand,    mutation: Mutations::UpdateBrand
    field :update_product,  mutation: Mutations::UpdateProduct

    # Delete  
    field :delete_link,     mutation: Mutations::DeleteLink
    field :delete_brand,    mutation: Mutations::DeleteBrand
    field :delete_product,  mutation: Mutations::DeleteProduct
  end
end