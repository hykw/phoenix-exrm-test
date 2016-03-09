defmodule Exrmtest.PageController do
  use Exrmtest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
