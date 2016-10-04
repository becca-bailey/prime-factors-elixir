defmodule PrimeFactors do
  def generate(n) do
    factors = []
    return_factors(factors, n, 2)
  end

  defp return_factors(factors, n, divisor) when n < divisor do
    factors
  end

  defp return_factors(factors, n, divisor) when rem(n, divisor) == 0 do
    return_factors(List.insert_at(factors, -1, divisor), div(n, divisor), divisor)
  end

  defp return_factors(factors, n, divisor) do
    return_factors(factors, n, divisor + 1)
  end
end
