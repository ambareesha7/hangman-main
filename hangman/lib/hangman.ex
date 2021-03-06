defmodule Hangman do
  alias Hangman.Impl.Game

  @type state :: :initialing | :won | :good_guess | :bad_guess | :already_used
  @type game :: any()
  @type tally :: %{
          turns_left: integer(),
          game_state: state(),
          letters: list(String.t()),
          used: list(String.t())
        }

  @spec new_game() :: game()
  defdelegate new_game, to: Game

  # def new_game do
  #   Game.new_game()
  # end

  @spec make_move(game(), String.t()) :: {game(), tally()}
  def make_move(game, guess) do
  end
end
