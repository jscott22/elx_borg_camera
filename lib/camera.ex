defmodule Camera do

  defmodule Config do
    def camera() do
      if Mix.env() == :prod do
        Picam
      else
        DummyNerves.Camera
      end
    end
  end

  @camera Config.camera()

  def send_picture() do
    image = @camera.next_frame()
    Base.encode64(image)
  end

end