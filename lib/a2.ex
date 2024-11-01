defmodule A2 do
  @b B2

  def call_b do
    @b.say_hello()
  end
end
