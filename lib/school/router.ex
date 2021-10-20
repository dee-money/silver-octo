defmodule School.Router do
  use Plug.Router
  
  plug :match
  plug :dispatch
  
  alias School.Venues
  
  get "/hello" do
    send_resp(conn, 200, "world")  
  end
  
  get "/buildings" do
    buildings = Venues.all_buildings()
    
    conn
    |> send_resp(200, Jason.encode!(buildings))
  end
  
  post "/buildings" do
    # to be implemented by aytug / game 
  end
end