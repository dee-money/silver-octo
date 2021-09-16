defmodule School.Venues.Room do
  @enforce_keys [:id, :name, :building]
  defstruct [:id, :name, :building]
  
  defmodule Store do
    use School.Storage.Base
  end
  
  def new(building, %{name: name}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      building: building
    }
  end
end