defmodule Camera.Application do

  use Application
  
  def start(_type, _args) do
    import Supervisor.Spec

    children = children(Mix.env())

    opts = [strategy: :one_for_one, name: Camera.Supervisor]
    Supervisor.start_link(children, opts)

  end

  def children(:prod) do
    import Supervisor.Spec
    [
      worker(Picam.Camera, [])
    ]
  end

  def children(_) do
    []
  end

end