defmodule PrimeFactorsTest do
  use ExUnit.Case
  doctest PrimeFactors

  test "returns empty list" do
    assert PrimeFactors.generate(0) == [] 
    assert PrimeFactors.generate(1) == []
  end

  test "returns prime factors of 2" do
    assert PrimeFactors.generate(2) == [2]
  end

  test "returns prime factors of 3" do
    assert PrimeFactors.generate(3) == [3]
  end

  test "returns prime factors of 4" do
    assert PrimeFactors.generate(4) == [2, 2]
  end

  test "returns prime factors of 6" do
    assert PrimeFactors.generate(6) == [2, 3]
  end

  test "returns prime factors of 8" do
    assert PrimeFactors.generate(8) == [2, 2, 2]
  end

  test "returns prime factors of 9" do
    assert PrimeFactors.generate(9) == [3, 3]
  end

  test "returns prime factors of 99" do
    assert PrimeFactors.generate(99) == [3, 3, 11]
  end
end
