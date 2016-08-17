use Mix.Config

config :todos, :ecto_repos, [Todos.Repo]

import_config "#{Mix.env}.exs"
