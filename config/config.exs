# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :geo_app,
  ecto_repos: [GeoApp.Repo]

# Configures the endpoint
config :geo_app, GeoAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Htq0MDRLfmmrMoZezLJiLqn0+zwDocdj3MJFywD6oqaHoo8Zr5TX4PkHObgfsirx",
  render_errors: [view: GeoAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GeoApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
