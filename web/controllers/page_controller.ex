defmodule PhoenixElmWebpackHerokuExampleApp.PageController do
  use PhoenixElmWebpackHerokuExampleApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
