defmodule S2.After.Queries do
  use Absinthe.Schema.Notation

  object :user do
    field(:id, :integer)
  end

  object :queries do
    field :user, :user do
      arg(:id, :integer)

      resolve(fn parent, args, resolution ->
        resolver().query_user(parent, args, resolution)
      end)
    end
  end

  # Either option below works
  defp resolver, do: :"Elixir.S2.Before.Resolver"
  # defp resolver, do: Module.concat(S2.Before, Resolver)
end
