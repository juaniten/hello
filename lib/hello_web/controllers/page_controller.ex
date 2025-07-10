defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home, layout: false)
    # conn     |> put_resp_content_type("text/plain")     |> send_resp(201, "")
    # redirect(conn, to: ~p"/redirect_test")
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:home, layout: false)
  end

  def redirect_test(conn, _params) do
    render(conn, :home, layout: false)
  end
end
