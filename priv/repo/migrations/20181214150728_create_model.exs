defmodule Bug.Repo.Migrations.CreateModel do
  use Ecto.Migration

  def change do
    create table("models") do
      add(:payload, :jsonb, null: false, default: "{}")
    end
  end
end
