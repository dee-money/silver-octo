defmodule School.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      School.Venues.Building.Store,
      School.Venues.Room.Store
      # Starts a worker by calling: Skool.Worker.start_link(arg)
      # {Skool.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: School.Supervisor]
    Supervisor.start_link(children, opts)
  end
end