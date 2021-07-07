# Solving Warhammer 40,000

> In the grim darkness of the future there is only stats.

## Intorduction
**Last Updated: July 6th 2021
In game theory there exists the concept of "solving" a game. To solve a game means to determine the optimal move a player may make in every possible state the game may be in to ensure that the player either wins or draws, for some games this is easy, most people could given 30 mintues and some paper, solve the game of tik tak toe for example without too much effort, for some other games this can be more difficult because of the greater number of possible states, an example of this is chess, despite vast computing resources devoted to it the game of chess simply has so many possibly positions that simply iterating across them with current technology is prohibitve. In order for a game to be solveable it have strict rules that govern every possible state transition of the game, and can natrually have no element of chance, for once you introduce randomness to the equation it because virtually impossible to solve as there is no guarenteed transition from one state of the game to another, or in other words, you cannot predit with certainty what the next state of the game will be given the current state of the game. In this case you can still find the optimal play style for a game that maximizes your chances of succeeding, such as in blackjack, where the optimal strategy has been determined that will net a player an average of a 15% return over a long enough timeframe, assuming that the player is capable of counting cards perfectly, and employes perfect blackjack strategy; however once you leave the realm of strict rules, and lady luck becomes an influential force, we leave the realm of pure mathmetics and provably solveable into the realm of statistics and probabilistic outcomes.
Warhammer 40,000 is a table top war game, or to state it another way it is the adult version of banging your action figures together, with some rules to prevent you from having a dinosaur that eats forcefield dogs. A full review of all of the rules of warhammer 40,000 is beyond the scope of what can be discussed here, both because of length, the core rule book is over 250 pages, and because of the notirous litigitious history Games Workshop (seriously at one point the guys tried to sue someone for using the term space marine in a context completelly divorced from 40k). In brief however the core of 40k revolves around combat between variuos units, the order of what happens is:
1. The player that is attacking rolls 6-sided dice to determine if they are accurate enough with their weapon to make contact with the targetd enemy unit. The naumber of dice that are rolled is determined by the number of attacks the attacking unit has, and the they must roll equal to or higher than the attacking units Balistic skill, if making a ranged attck, or the attacking units weapons skill if making a melee attack.
2. The attacking player then takes the dice that had a high enough result in step 1 and rolls those dice to determine if the targeted unit suffers damage as a result of the attack. Whether or not an attack causes damage is determined by rolling the dice and comparing the strength of the attacker with the toughness of the defender. If the attacker has a strength equal to the toughness of the defender than a dice roll of 4 or higher is required to cause damage to the unit under attack. If the tougness of the defender is higher a 5 or higher is required to cause damage, if the defenders toughness is twice the value of the attackers strength then a dice must have a value of 6 to damage the defender.
3. Finally the defender makes what is called  a "saving throw" to determine if they can take the attack without suffering damage. The defender then rolls a dice for each dice the attacker rolled in step 2 that had the necessary or higher value, if the defender manages to roll equal to or higher than the Save score of the defender the attack does not damage the unit. If a result on the dice is lower than the defending unit's save value, then the unit takes the amount of damage that is specified by the attackers weapon.
There is a lot more to resolving combat than this, rules such as armor pentration, feel no pain, and an unending well of exceptions special rules and deviations to what is listed above; however this serves as a basic outline of how combat is handled in Warhammer 40,000, with almost all the rest of the possible player actions being devoted modifying the results needed in the above three steps or the number of dice that are rolled by the attacker or defender.

Given that the entire core mechanic of Warhammer 40,000 is revolves around dice rolls, natrually the game cannot be solved in any meaingful sense, but we can use statistics and simulations to help us arrive at handy rules of thumb, and to help us evaluate the tradeoffs, and results of the variuos actions that can be taken in Warhammer 40,000,  This project is an attempt to help make some progress to determining optimal play decisions in a game of Warhammer 40,000 with the hope of improving the authors own personal play style. This analysis will be carried outusing simulations to predict outcomes rather than raw stasitics. This approeach has been taken to help ensure that a small error in the author's understanding does not invalidate results, and because writing code is far more fun, and by running simulations we may discover phenomena that may not be appearant through pure stasitical analysis. This article is intended to be a running chronicle of experimients, results and observations rather than a static report of current understanding.
