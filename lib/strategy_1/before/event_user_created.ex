defmodule S1.Before.Event.UserCreated do
  use S1.Before.Core.Event

  defstruct [:user_id]

  @name :user_created_event

  def new(user_id) do
    %__MODULE__{user_id: user_id}
  end
end
