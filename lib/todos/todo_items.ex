defmodule Todos.TodoItems do
  alias Todos.{Repo, Todo}
  import Ecto.Query

  def items do
    (from t in Todo, select: {t.item, t.completed})
    |> Repo.all
  end

  def add(item) do
    Todo.changeset(%Todo{}, %{item: item})
    |> Repo.insert!
  end
end
