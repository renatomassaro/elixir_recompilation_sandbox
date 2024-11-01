defmodule ModuleRecompilationSandboxTest do
  use ExUnit.Case
  doctest ModuleRecompilationSandbox

  test "greets the world" do
    assert ModuleRecompilationSandbox.hello() == :world
  end
end
