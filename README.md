# Evolutionary Game Model
 
## Model Scenario:

Two islands: This creates a situation where the actions of one island can affect the other, mimicking real-world interactions between individuals or groups.
Coconut trees: Represent a shared resource that can be exploited for immediate gain but faces depletion over time.
Two strategies: "Harvest" and "Protect" offer a choice between short-term benefits and long-term sustainability.

## Payoffs:

Harvest-Harvest: (2 for both, next round yield reduced by 50%)
2 represents a moderate immediate gain for both islands.
The future yield reduction incentivizes cooperation and discourages overharvesting.
Harvest-Protect: (4 for harvester, 0 for protector, next round yield unchanged)
High immediate gain for the harvester at the protector's expense.
Unchanged future yield reflects the protector preserving the resource for future use.
Protect-Harvest: (2 for harvester, 0 for protector, next round yield unchanged)
Similar to Harvest-Protect, the protector sacrifices immediate gain for future benefits.
Protect-Protect: (0 for both, next round yield doubled)
No immediate gain for both islands, but a significant increase in future yield rewards long-term cooperation.

## MATLAB Implementation:

### Initial strategy probabilities:
p_harvest_island1: Represents the initial probability of Island 1 choosing "Harvest."
p_harvest_island2: Represents the initial probability of Island 2 choosing "Harvest."
Number of rounds: Controls the duration of the simulation.
Loop: Simulates the game through multiple rounds:
### Payoff calculations:
Based on chosen strategies, payoffs are calculated for each island using the defined payoff matrix.
### Future yield update:
If an island's "Harvest" probability is above 50% (majority harvesting), its future yield is reduced by half, reflecting resource depletion.
### Strategy update:
Replicator dynamics are used to update the "Harvest" probabilities for the next round. This dynamically adapts strategies based on individual and collective payoffs.
Each island's probability of choosing "Harvest" increases (or decreases) in proportion to the difference between its own payoff and the other island's payoff from the previous round. This encourages islands to choose strategies that lead to higher payoffs.
### Results printing:
Shows the "Harvest" probability for each island after each round, demonstrating how strategies evolve over time.
### Final outcome analysis:
Checks if both islands have a "Harvest" probability above 50%, indicating overharvesting and reduced future yields.
Otherwise, at least one island has adopted a sustainable strategy, preserving the resource for future use.

## Key takeaways:

This model captures the tension between individual exploitation and collective sustainability.
Replicator dynamics introduce an adaptive element, mimicking how individuals learn and adjust their behavior based on their own and others' outcomes.
The model demonstrates how even simple interactions can lead to complex dynamics and potentially achieve cooperative outcomes.

## Further exploration:

You can modify the payoffs, initial probabilities, or number of rounds to see how they influence the model's behavior.
Introduce different strategies, resource dynamics, or environmental factors for a more nuanced simulation.
Visualize the evolution of the "Harvest" probabilities over time to gain deeper insights into the strategic interactions.