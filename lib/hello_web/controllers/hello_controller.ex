defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
    # json(conn, %{id: messenger})
    # text(conn, "From messenger #{messenger}")
  end
end
