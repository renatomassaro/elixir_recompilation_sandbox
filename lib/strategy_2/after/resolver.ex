defmodule S2.After.Resolver do
  def query_user(_, %{id: id}, _),
    do: {:ok, S2.After.Services.User.fetch(id)}
end
