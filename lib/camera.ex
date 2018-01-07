defmodule Camera do

  @camera Application.get_env(:camera, :camera, nil)

  def send_picture() do
    image = @camera.next_frame()
    Base.encode64(image)
  end

end