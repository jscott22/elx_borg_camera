defmodule Camera.Application do

  use Application
  
  def start(_type, _args) do
    children = Application.get_env(:camera, :children, nil)
    opts = [strategy: :one_for_one, name: Camera.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
