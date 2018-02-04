defmodule Camera do

  @camera Application.get_env(:camera, :camera, nil)
  @size Application.get_env(:camera, :size, {300, 0})

  def send_picture() do
    image = @camera.next_frame()
    Base.encode64(image)
  end

  def set_size(width, height) do
    @camera.set_size(width, height)
  end

  def set_default_size() do
    {width, height} = @size
    set_size(width, height)
  end

end
