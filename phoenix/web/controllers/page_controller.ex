defmodule Benchmarker.PageController do
  use Phoenix.Controller

  plug :action

  def with_delay(conn, %{"seconds" => seconds}) do
    :timer.sleep(String.to_integer(seconds) * 1000)
    render conn, "with_delay.html", seconds: seconds
  end

  def with_delay(conn, _params) do
    render conn, "with_delay.html", seconds: 0
  end

end
