# Trading Card Score Aggregator

**Small Elixir application that models a basic trading card score aggregator. This application will receive a list of trading cards (represented by structs or maps) that include player name, team, and a score based on the card's rarity and condition. Your task is to calculate the total score for a given team**

## Run application

```bash
  iex -S mix

  iex> TeamScores.aggregate_team_score([%{player: "John", team: "A", score: 10}, %{player: "Jane", team: "B", score: 20}, %{player: "Jack", team: "A", score: 30}])
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `team_scores` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:team_scores, "~> 0.1.0"}
  ]
end
```

## Test

mix test

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/team_scores>.
