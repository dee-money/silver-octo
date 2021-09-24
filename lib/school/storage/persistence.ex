defmodule School.Storage.Persistence do
  def load(module) do
    module_struct =
      module
      |> to_string()
      |> String.replace(".Store", "")
      
    module_struct = Module.safe_concat([module_struct])
    
    module
    |> path()
    |> File.read()
    |> case do
      {:ok, content} ->
        content
        |> Jason.decode!()
        |> Enum.map(fn param -> 
          param
          |> Enum.map(fn {key, value} -> 
            {String.to_existing_atom(key), value}
          end)
          |> Enum.into(%{})
        end)
        |> Enum.map(fn item -> 
          struct(module_struct, item)
        end)
      {:error, _} -> 
        []
    end
  end
  
  def persist(module, content) do
    module
    |> path()
    |> File.write!(Jason.encode!(content))
  end
  
  defp path(module) do
    [_, _, module_name, _] =
      module
      |> Macro.underscore()
      |> String.split("/") 
      
    Application.app_dir(:school)
    |> Path.join("priv/stores/#{module_name}.json") 
  end
end