module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end


### query user
# query {
#   user(id: 1) {
#     name
#     email
#     books {
#       title
#     }
#   }
# }

# multiple users

# query {
#   users {
#     id
#     name
#   }
# }
