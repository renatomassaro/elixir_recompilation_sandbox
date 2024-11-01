defmodule ClientTwo do
  @compile_time_dependency_on_a A3.foo()
end
