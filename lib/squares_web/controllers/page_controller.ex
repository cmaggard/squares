defmodule SquaresWeb.PageController do
  use SquaresWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
