use Mix.Config

config :todos, Todos.Repo,[
  adapter: Ecto.Adapters.Postgres,
  database: "todos_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
]
