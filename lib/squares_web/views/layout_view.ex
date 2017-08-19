defmodule SquaresWeb.LayoutView do
  use SquaresWeb, :view

  def js_script_tag(file) do
    ~s(<script src="#{_js_script_location(file, Mix.env)}"></script>)
  end

  def _js_script_location(file, :prod), do: "/js/#{file}"

  def _js_script_location(file, _), do: "http://localhost:8080/js/#{file}"

  def css_link_tag(file) do
    if Mix.env == :prod do
      ~s(<link rel="stylesheet" type="text/css" href="/css/#{file}" media="screen,projection" />)
    else
      ""
    end
  end
end
