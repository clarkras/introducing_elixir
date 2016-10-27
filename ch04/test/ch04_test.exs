defmodule Ch04Test do
  import Fact
  import CountUp
  import Fibonacci
  use ExUnit.Case
  doctest Ch04

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "countup" do
    assert countup(5) == 5
    assert countup(1) == 1
  end

  test "factorial" do
    assert factorial(5) == 120
    assert factorial(1) == 1
  end

  test "Fibonacci" do 
    assert fib(1) == 1
    assert fib(2) == 1
    assert fib(3) == 2
    assert fib(4) == 3
    assert fib(5) == 5
  end
end
