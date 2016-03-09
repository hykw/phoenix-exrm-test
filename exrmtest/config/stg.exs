use Mix.Config

config :exrmtest, Exrmtest.Endpoint,
  http: [port: 4000],
  url: [host: "example.com", port: 4000],
  cache_static_manifest: "priv/static/manifest.json",
  server: true

config :logger, level: :info

config :exrmtest, Exrmtest.Endpoint,
  secret_key_base: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
