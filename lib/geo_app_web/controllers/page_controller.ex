defmodule GeoAppWeb.PageController do
  use GeoAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
