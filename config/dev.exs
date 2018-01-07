use Mix.Config

import Supervisor.Spec

config :camera,
  camera: Picam,
  children: [
    worker(Picam.Camera, [])
  ]