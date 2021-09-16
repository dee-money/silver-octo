defmodule School.Storage.Base do
  defmacro __using__(_options) do
    quote do
      use Agent
      
      def start_link(_options) do
        Agent.start_link(fn -> [] end, name: __MODULE__)  
      end
      
      def add(resource) do
        Agent.update(__MODULE__, fn state -> 
          state ++ [resource]
        end)
      end
      
      def all do
        Agent.get(__MODULE__, fn state -> state end)  
      end
      
      def get(id) do
        Agent.get(__MODULE__, fn state -> 
          Enum.find(state, fn resource -> resource.id == id end)
        end)
      end
    end
  end
end