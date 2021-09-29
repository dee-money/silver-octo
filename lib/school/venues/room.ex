defmodule School.Venues.Room do
  @derive Jason.Encoder

  @enforce_keys [:id, :name, :building]
  defstruct [:id, :name, :building]

  defmodule Store do
    use School.Storage.Base
  end

  alias School.Storage.Association

  def new(building, %{name: name}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      building: Association.new(building)
    }
  end
end
