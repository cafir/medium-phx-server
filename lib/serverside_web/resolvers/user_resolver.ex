defmodule ServersideWeb.Resolvers.UserResolver do

    alias Serverside.Accounts
    def users(_,_,_) do
        {:ok, Accounts.list_users()}
    end 
end