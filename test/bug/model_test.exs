defmodule Bug.ModelTest do
  @moduledoc false
  use Bug.DataCase
  alias Bug.{Repo, Model, Payload}

  test "payload after save and after retrieving from DB should be the same" do
    value = "some-value"
    payload = %Payload{field: value}
    changeset = Model.changeset(%Model{}, %{payload: payload})

    expected_model = %Model{payload: %{"field" => value}}

    {:ok, inserted_model} = Repo.insert(changeset)
    retrieved_model = Repo.get(Model, inserted_model.id)

    assert ^expected_model = inserted_model,
           "inserted model is not the same as the expected one"

    assert ^expected_model = retrieved_model,
           "retrieved model is not the same as the expected one"
  end
end
