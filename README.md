# School

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `school` to your list of dependencies in `mix.exs`:

## Data Structure

+ Venues
  + Building
    + name:string
  + Room
    + name:string
    + building:references:Building

+ Materials
  + Class
    + subject:references:Subject
    + room:references:Room
  + Subject
    + name:string
    + grade:number

+ Attendees
  + Teacher
    + name:string
    + age:number
    + speciality:array:Subject
  + Student
    + name:string
    + grade:number
    + age:number
    + gender:string

```elixir
def deps do
  [
    {:school, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/school](https://hexdocs.pm/school).

