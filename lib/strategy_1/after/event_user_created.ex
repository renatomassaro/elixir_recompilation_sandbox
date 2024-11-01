defmodule S1.After.Event.UserCreated do
  use S1.After.Core.Event.Definition

  defstruct [:user_id]

  @name :user_created

  def new(user_id) do
    %__MODULE__{user_id: user_id}
  end
end
