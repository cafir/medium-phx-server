defmodule Serverside.Repo do
  use Ecto.Repo,
    otp_app: :serverside,
    adapter: Ecto.Adapters.Postgres
end
