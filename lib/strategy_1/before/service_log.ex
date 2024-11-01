defmodule S1.Before.Services.Log do
  def info(value), do: IO.puts("[info] #{value}")
end
