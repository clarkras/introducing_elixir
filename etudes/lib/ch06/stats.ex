defmodule Stats do
  def hello do
    "hello"
  end

  def minimum([h | t]) do
    minimum t, h
  end

  defp minimum([], n) do
    n
  end

  defp minimum([h | t], n) when h < n do
    minimum t, h
  end

  defp minimum([_h | t], n) do
    minimum t, n
  end

  def maximum([h | t]) do
    maximum t, h
  end

  defp maximum([], n) do
    n
  end

  defp maximum([h | t], n) when h > n do
    maximum t, h
  end

  defp maximum([_h | t], n) do
    maximum t, n
  end

  def range(list) do
    [minimum(list), maximum(list)]
  end
end
