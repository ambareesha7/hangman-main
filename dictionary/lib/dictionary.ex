defmodule Dictionary do
  @word_list "assets/words.txt"
             |> File.read!()
             |> String.split(~r/\n/, trim: true)

  def random_word do
    @word_list |> Enum.random()
  end

  def compare(a, a), do: true
  def compare(_a, _b), do: false

  def swap({a, b}) do
    {b, a}
  end
end
