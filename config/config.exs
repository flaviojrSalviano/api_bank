# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

app_hostname = System.fetch_env("APP_HOSTNAME") || "localhost"
secret_key_base = System.fetch_env("SECRET_KEY_BASE") || ""

config :api_bank,
  ecto_repos: [ApiBank.Repo]

# Configures the endpoint
config :api_bank, ApiBankWeb.Endpoint,
  url: [host: app_hostname],
  secret_key_base: secret_key_base,
  render_errors: [view: ApiBankWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiBank.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
