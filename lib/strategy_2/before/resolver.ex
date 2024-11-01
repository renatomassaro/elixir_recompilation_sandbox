defmodule S2.Before.Resolver do
  def query_user(_, %{id: id}, _),
    do: {:ok, S2.Before.Services.User.fetch(id)}
end
