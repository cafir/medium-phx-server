defmodule ServersideWeb.Schema.Types do
    use Absinthe.Schema.Notation

    alias ServersideWeb.Schema.Types

    import_types(Types.UserType)
end