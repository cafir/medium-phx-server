defmodule ServersideWeb.Schema do
    use Absinthe.Schema

    alias ServersideWeb.Resolvers
    #import
    import_types(ServersideWeb.Schema.Types) 

    query do
        @desc "Get a list of all users"
        field :users, list_of(:user_type) do
        #resolver
        resolve(&Resolvers.UserResolver.users/3)
        end
    end
end