defmodule S2.Before.Queries do
  use Absinthe.Schema.Notation

  object :user do
    field(:id, :integer)
  end

  object :queries do
    field :user, :user do
      arg(:id, :integer)

      resolve(&S2.Before.Resolver.query_user/3)
    end
  end
end
