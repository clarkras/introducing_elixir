defmodule Fibonacci do
  
  def fib(n) when n > 2 do
    fib(n - 2) + fib(n - 1)
  end

  def fib(n) when n == 2 do
    1
  end

  def fib(n) when n == 1 do
    1
  end

end
