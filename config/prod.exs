use Mix.Config

config :camera,
  camera: Picam,
  children: [
    {Picam.Camera, []}
  ]