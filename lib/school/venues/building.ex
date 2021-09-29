defmodule School.Venues.Building do
  @derive Jason.Encoder

  @enforce_keys [:id, :name]
  defstruct [:id, :name]

  defmodule Store do
    use School.Storage.Base
  end

  def new(%{name: name}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name
    }
  end
end
