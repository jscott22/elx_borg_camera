defmodule Camera do

def send_picture() do
  image = Picam.next_frame()
  Base.encode64(image)
end

end