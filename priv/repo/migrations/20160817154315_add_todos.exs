defmodule Todos.Repo.Migrations.AddTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :item, :string
      add :completed, :boolean, default: false

      timestamps
    end
  end
end
