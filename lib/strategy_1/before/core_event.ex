defmodule S1.Before.Core.Event do
  alias S1.Before.Services

  defmacro __using__(_) do
    quote do
      alias __MODULE__
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_) do
    quote do
      @name || raise "You must specify the event name via @name"

      @doc """
      Returns the event name.
      """
      def get_name, do: @name
    end
  end

  def emit(%{id: id, data: _data}) do
    Services.Log.info("Emitting event_id=#{id}")
  end
end
