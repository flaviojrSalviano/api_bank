use Mix.Config

# Configure your database
config :api_bank, ApiBank.Repo,
  username: "postgres",
  password: "postgres",
  database: "api_bank_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api_bank, ApiBankWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn