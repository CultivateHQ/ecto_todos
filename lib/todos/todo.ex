defmodule Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :item, :string
    field :completed, :boolean, default: false

    timestamps
  end

  @required_fields ~w(item completed)
  @optional_fields ~w()


  def changeset(record, params \\ :empty) do
    record
    |> cast(params, @required_fields, @optional_fields)
  end
end
