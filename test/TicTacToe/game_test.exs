defmodule TicTacToe.GameTest do
  use ExUnit.Case
  import TicTacToe.Game
  doctest TicTacToe.Game

  test "gives the correct winner for X" do
    %{winner: winner} =
      new()
      |> make_move(0, 0)
      |> make_move(1, 0)
      |> make_move(0, 1)
      |> make_move(2, 0)
      |> make_move(0, 2)

    assert winner == "X"
  end

  test "gives the correct winner for O" do
    %{winner: winner} =
      new()
      |> make_move(1, 1)
      |> make_move(0, 0)
      |> make_move(2, 2)
      |> make_move(1, 0)
      |> make_move(0, 2)
      |> make_move(2, 0)

    assert winner == "O"
  end

  test "winner is nil while game is in progress" do
    %{winner: winner} =
      new()
      |> make_move(1, 1)
      |> make_move(0, 2)
      |> make_move(2, 0)

    assert winner == nil
  end

  test "detects draws" do
    %{winner: winner} =
      new()
      |> make_move(0, 0)
      |> make_move(2, 2)
      |> make_move(2, 0)
      |> make_move(1, 0)
      |> make_move(0, 2)
      |> make_move(0, 1)
      |> make_move(2, 1)
      |> make_move(1, 1)
      |> make_move(1, 2)

    assert winner == :draw
  end
end
