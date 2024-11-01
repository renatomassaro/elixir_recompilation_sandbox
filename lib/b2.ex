defmodule B2 do
  @person C2.get_person()

  def say_hello do
    IO.puts("Hello #{@person}")
  end
end
