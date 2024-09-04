defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [ language | list ]

  def remove([_first | rest]), do: rest

  def first([first | _rest]), do: first

  def count([]), do: 0
  def count([_first | rest]), do: count(rest, 1)
  def count([], count), do: count
  def count([_first | rest], count), do: count(rest, count + 1)

  def functional_list?(list) when is_list(list), do: "Elixir" in list
  def functional_list?(_list), do: false
end
