defmodule TeamScores.TradingCard do
  @moduledoc """
      Represents the Trading Card struct with:
            name: String (player's name)
            team: String (name of the sports team)
            score: Integer (the card's score)
  """
  @enforce_keys [:name, :team, :score]
  defstruct name: nil, team: nil, score: 0

  @type t :: %__MODULE__{name: String.t(), team: String.t(), score: integer}
end
