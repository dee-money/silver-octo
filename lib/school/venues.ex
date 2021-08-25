defmodule School.Venues do
  alias School.Venues
  
  defdelegate new_building(params), 
    to: Venues.Building,
    as: :new
    
  defdelegate new_room(building, params), 
    to: Venues.Room,
    as: :new 
end