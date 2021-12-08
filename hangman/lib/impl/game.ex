defmodule Hangman.Impl.Game do
  defstruct(
    game_state: :initializing,
    turn_left: 7,
    letters: [],
    used: MapSet.new()
  )

  def new_game do
    %__MODULE__{
      letters:
        Dictionary.random_word()
        |> String.codepoints()
    }
  end
end
