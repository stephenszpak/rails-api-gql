module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
  end
end

## Create User

# mutation {
#   createUser(input: {
#     name: "Matt Boldt",
#     email: "me@mattboldt.com"
#   }) {
#     user {
#       id
#       name
#       email
#     }
#     errors
#   }
# }