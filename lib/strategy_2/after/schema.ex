defmodule S2.After.Schema do
  use Absinthe.Schema

  import_types(S2.After.Queries)

  query do
    import_fields(:queries)
  end
end
