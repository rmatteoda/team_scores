defmodule TeamScores do
  @moduledoc """
  Module for `TeamScores application` that models a basic trading card score aggregator.
  """

  alias TeamScores.TradingCard

  @doc """
  Given a list of trading cards, calculate the total score for a given team

  ## Examples
    iex> TeamScores.aggregate_team_score([%{name: "Player A", team: "Team X", score: 10}], "Team X") == 10
  """
  @spec aggregate_team_score([TradingCard.t()], String.t()) :: integer
  def aggregate_team_score(cards, team_name) do
    cards
    |> Enum.reduce(0, fn team_card, team_score ->
      aggregate_score(team_card, team_score, team_name)
    end)
  end

  @spec aggregate_score(TradingCard.t(), String.t(), integer) :: integer
  defp aggregate_score(%{team: team} = team_card, team_score, team_name)
       when team == team_name do
    team_score + Map.get(team_card, :score, 0)
  end

  defp aggregate_score(_team_card, team_score, _team_name), do: team_score
end
