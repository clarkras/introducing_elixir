defmodule CountUp do

  def countup(limit) do
    countup(1, limit)
  end

  defp countup(n, limit) when n <= limit do
    IO.inspect n
    countup(n + 1, limit)
  end

  defp countup(_count, _limit) do
    IO.puts "finished!"
  end
end
