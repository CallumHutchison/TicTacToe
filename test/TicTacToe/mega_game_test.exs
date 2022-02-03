defmodule TicTacToe.MegaGameTest do
  use ExUnit.Case
  import TicTacToe.MegaGame
  doctest TicTacToe.MegaGame

  test "gives the correct winner for X" do
    %{winner: winner} =
      new()
      |> make_move({0, 0}, {2, 2})
      |> make_move({2, 2}, {0, 0})
      |> make_move({0, 0}, {2, 0})
      |> make_move({2, 0}, {0, 0})
      |> make_move({0, 0}, {2, 1})
      |> make_move({2, 1}, {1, 1})
      |> make_move({1, 1}, {2, 1})
      |> make_move({2, 1}, {0, 0})
      |> make_move({1, 1}, {0, 1})
      |> make_move({0, 1}, {1, 1})
      |> make_move({1, 1}, {1, 1})
      |> make_move({1, 2}, {2, 2})
      |> make_move({2, 2}, {0, 1})
      |> make_move({0, 1}, {2, 2})
      |> make_move({2, 2}, {2, 1})
      |> make_move({2, 1}, {2, 2})
      |> make_move({2, 2}, {1, 1})

    assert winner == "X"
  end
end
