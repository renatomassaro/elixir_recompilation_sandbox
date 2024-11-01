defmodule S2.Before.Schema do
  use Absinthe.Schema

  import_types(S2.Before.Queries)

  query do
    import_fields(:queries)
  end
end
