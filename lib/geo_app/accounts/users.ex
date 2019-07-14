defmodule GeoApp.Accounts.Users do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :location, Geo.PostGIS.Geometry

    timestamps()
  end

  @doc false
  def changeset(users, attrs) do
    users
    |> cast(attrs, [:name, :location])
    |> validate_required([:name])
  end
end
