defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "call method should return the length of odd fields inside the list" do
    assert ListFilter.call(["5", "a", "2b", "35ac", "3", "2", "1"]) == 3
  end
end
