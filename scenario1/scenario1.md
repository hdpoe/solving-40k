# Scenario 1
This first scenario was put together mainly to ensure the environment was setup correctly and that get some familiarity with elixer. Scenario 1 is a simple scenario, it's purpose is to detremine the number of wounding hits that get through given the following stats:

- Attacker has 4 dice.
- Attacker has melee/ballistic skill of 4.
- Attacker has strength of 4.
- Defender has toughness of 4.
- Defender has a Save of 4.

The objective is to determine how many hits the defender can be expected to take given the above listed parameters. With the above listed parameters we ran the scenario 1 million times.

## Results
The full results are found in the scenario1.txt file, the summary of the results is as follows:

Hits 0	Count: 3169	 (31.69%)

Hits 1	Count: 4257	 (42.57%)

Hits 2	Count: 2079	 (20.79%)

Hits 3	Count: 459	 (4.590000000000001%)

Hits 4	Count: 36	 (0.36%)


Mean result: 0.9936

## Analysis

| Number of Wounding hits | Odds of getting at least X wounding hits | Number of times expected to get at least X wounding hits |
| ---------------------------------------- | --------------------------------------------------------- | -------------------- |
|1| 68.31% | 17 out of 25|
|2|25.75%| 1 out of 4|
|3|4.95%| 1 out of 20|
|4| 0.36% | less than 1 out of 100|

In short it looks like the chances of getting a wounding hit given a BS/WS of 4 and a toughness and strangth equal to the target you can't guarentee even one wounding hit assuming that at least a 97% chance of an event is required to have confidence in it's occurance.
