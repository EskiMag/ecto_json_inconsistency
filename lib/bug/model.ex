defmodule Bug.Model do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  schema "models" do
    field(:payload, :map)
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:payload])
  end
end
