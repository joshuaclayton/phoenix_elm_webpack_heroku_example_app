ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixElmWebpackHerokuExampleApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixElmWebpackHerokuExampleApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixElmWebpackHerokuExampleApp.Repo)

