defmodule ServersideWeb.PageController do
  use ServersideWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
