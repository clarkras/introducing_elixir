defmodule Fact do

  def factorial(n) when n >= 1 do
    factorial(n, n - 1)
  end

  defp factorial(acc, 0) do
    acc
  end

  defp factorial(acc, n) do
    factorial(acc * n, n - 1)
  end

end
