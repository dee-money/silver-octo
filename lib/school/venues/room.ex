defmodule School.Venues.Room do
  @enforce_keys [:name, :building]
  defstruct [:name, :building]
  
  def new(building, %{name: name}) do
    %__MODULE__{
      name: name,
      building: building
    }
  end
end