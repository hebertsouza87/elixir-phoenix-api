# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rest_api,
  ecto_repos: [RestApi.Repo]

# Configures the endpoint
config :rest_api, RestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8p5n1gmubkB7FcDFNaHv04UYrlnNboiZ7xbJeO46iwsHFE3IQuy0H4XDqbmF7Ay4",
  render_errors: [view: RestApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: RestApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure JSON response
config :phoenix, :format_encoders,
  "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
