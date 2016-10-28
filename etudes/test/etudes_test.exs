defmodule EtudesTest do
  use ExUnit.Case
  doctest Etudes

  test "the truth" do
    assert 1 + 1 == 2
  end

  describe "ch06" do
    import Stats

    test "hello" do
      assert hello == "hello"
    end

    test "minimum/1" do
      assert minimum([3, 2, 4]) == 2
      assert minimum([3]) == 3
      assert minimum([-3, 2, 4]) == -3
    end

    test "maximum/1" do
      assert maximum([2, 3, 2, 4]) == 4
      assert maximum([3]) == 3
      assert maximum([-3, 2, 4]) == 4
    end
 
    test "range/1" do
      assert range([3, 2, 4]) == [2, 4]
      assert range([3]) == [3, 3]
      assert range([-3, 2, 4]) == [-3, 4]
    end
  end
end
