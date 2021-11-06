require Integer

defmodule ListFilter do
  def checkInteger(text) do
    case Integer.parse(text) do
      { _, "" } -> true
      _ -> false
    end
  end

  def isOdd(numberAsText) do
    { value, _ } = Integer.parse(numberAsText)
    Integer.is_odd(value)
  end

  def call(list) do
    listWithOddNumbers = Enum.filter(list, 
      fn value -> 
        ListFilter.checkInteger(value) && 
        ListFilter.isOdd(value) 
      end
    )
    length(listWithOddNumbers)
  end
end
