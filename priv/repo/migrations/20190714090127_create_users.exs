defmodule GeoApp.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
		
      timestamps()
    end

    execute("SELECT AddGeometryColumn ('users','location',4326,'POINT',2);")

  end
end
