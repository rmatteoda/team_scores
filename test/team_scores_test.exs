defmodule TeamScoresTest do
  use ExUnit.Case
  doctest TeamScores

  describe "aggregate_team_score/2" do
    test "calculates the total score for a specified team" do
      cards = [
        %{name: "Player A", team: "Team X", score: 10},
        %{name: "Player B", team: "Team Y", score: 20},
        %{name: "Player C", team: "Team X", score: 15},
        %{name: "Player D", team: "Team Z", score: 5}
      ]

      assert TeamScores.aggregate_team_score(cards, "Team X") == 25
      assert TeamScores.aggregate_team_score(cards, "Team Y") == 20
      assert TeamScores.aggregate_team_score(cards, "Team Z") == 5
    end

    test "The score for a team that is not inside of card list should be 0" do
      cards = [
        %{name: "Player B", team: "Team Y", score: 20},
        %{name: "Player D", team: "Team Z", score: 5}
      ]

      assert TeamScores.aggregate_team_score(cards, "Team X") == 0
    end

    test "The score should be 0 for an empty list of cards" do
      assert TeamScores.aggregate_team_score([], "Team X") == 0
    end

    test "Return 0 if the team name is empty" do
      cards = [
        %{name: "Player B", team: "Team Y", score: 20}
      ]

      assert TeamScores.aggregate_team_score(cards, "") == 0
    end
  end
end
