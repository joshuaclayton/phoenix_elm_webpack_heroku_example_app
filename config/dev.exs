use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with webpack to recompile .js and .css sources.
config :phoenix_elm_webpack_heroku_example_app, PhoenixElmWebpackHerokuExampleApp.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/webpack/bin/webpack.js", "--watch", "--color"]]

# Watch static and templates for browser reloading.
config :phoenix_elm_webpack_heroku_example_app, PhoenixElmWebpackHerokuExampleApp.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_elm_webpack_heroku_example_app, PhoenixElmWebpackHerokuExampleApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "phoenix_elm_webpack_heroku_example_app_dev",
  hostname: "localhost",
  pool_size: 10
