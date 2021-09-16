defmodule School.Venues do
  alias School.Venues
  
  alias Venues.Building
  
  defdelegate new_building(params), 
    to: Building,
    as: :new
    
  defdelegate add_building(building), 
    to: Building.Store,
    as: :add
    
  defdelegate all_buildings(), 
    to: Building.Store,
    as: :all
    
  defdelegate get_building(id), 
    to: Building.Store,
    as: :get 
    
  alias Venues.Room

  defdelegate new_room(building, params), 
    to: Room,
    as: :new
    
  defdelegate add_room(room), 
    to: Room.Store,
    as: :add
    
  defdelegate all_rooms(), 
    to: Room.Store,
    as: :all
    
  defdelegate get_room(id), 
    to: Room.Store,
    as: :get  
end