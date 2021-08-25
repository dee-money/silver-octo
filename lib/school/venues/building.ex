defmodule School.Venues.Building do
  @enforce_keys [:name]
  defstruct [:name]
  
  def new(%{name: name}) do
    %__MODULE__{
      name: name
    }
  end
end