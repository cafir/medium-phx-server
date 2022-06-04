defmodule Serverside.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :password_hash, :string
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true
    field :role, :string, default: "user"

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :password_hash, :role])
    |> validate_required([:first_name, :last_name, :email, :password_hash, :role])
    |> unique_constraint(:email)
  end
end
