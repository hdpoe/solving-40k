# General approach at this point provide the Attack Skill as an int, Attackers strength, defenders toughness, and the save state of the defender as well as the number of attacking dice.

defmodule Combat do
  def simulate_combat(attacks, attack_skill, strength, toughness, save) do
    Enum.map(1..attacks, fn _attack -> :rand.uniform(6) end) |>
      Enum.filter(fn roll -> roll >= attack_skill end) |>
      Enum.filter(fn roll -> roll >= wound_roll_calc(strength, toughness) end) |>
      Enum.filter(fn _roll -> :rand.uniform(6) >= save end) |>
      Enum.map(fn x -> "#{Integer.to_string(x)}," end) |>
      Enum.count
  end

  def wound_roll_calc(str, tough) do
    cond do
      str >= tough * 2 -> 2
      str > tough -> 3
      str < tough -> 5
      tough >= str * 2 -> 6
      str == tough -> 4
    end
  end

  def frequencies(enumerable) do
    Enum.reduce(enumerable, %{}, fn key, acc ->
      case acc do
        %{^key => value} -> %{acc | key => value + 1}
        %{} -> Map.put(acc, key, 1)
      end
    end)
  end

end

scenario1 = %{ :attacks => 4, :attack_skill => 4, :strength => 4, :toughness => 4, :save => 4 }
runs = 1000000
wounding_hits = for _n <- 1..runs, do: Combat.simulate_combat(scenario1[:attacks], scenario1[:attack_skill], scenario1[:strength], scenario1[:toughness], scenario1[:save])
avg = Enum.sum(wounding_hits) / Enum.count(wounding_hits)
distrobution = Combat.frequencies(wounding_hits)


IO.puts "The scenario1 is: attacks #{scenario1[:attacks]}\tattack_skill: #{scenario1[:attack_skill]}\tstrength: #{scenario1[:attack_skill]}\ttoughness: #{scenario1[:attack_skill]}\tsave: #{scenario1[:attack_skill]}"
IO.puts "Running #{runs} times."
IO.puts "The average result is #{avg}"
Enum.map(distrobution, fn {k, v} -> IO.puts "Hits #{k}\tCount: #{v}\t (#{(v / runs) * 100}%)" end)
for result <- wounding_hits, do: IO.puts "#{result} wounding hits"
