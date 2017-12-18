defmodule Camera.Application do

  use Application
  
  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(Picam.Camera, [])
    ]

    opts = [strategy: :one_for_one, name: Camera.Supervisor]
    Supervisor.start_link(children, opts)

  end

end