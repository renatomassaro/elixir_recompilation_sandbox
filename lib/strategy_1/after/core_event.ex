defmodule S1.After.Core.Event do
  alias S1.After.Services

  def emit(%{id: id, data: _data}) do
    Services.Log.info("Emitting event_id=#{id}")
  end
end
