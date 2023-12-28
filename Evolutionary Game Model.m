% Initial strategy probabilities
p_harvest_island1 = 0.5; % Probability of Island 1 harvesting
p_harvest_island2 = 0.7; % Probability of Island 2 harvesting

% Number of rounds
rounds = 200;

% Simulate rounds
for r = 1:rounds
  % Calculate payoffs based on chosen strategies
  payoff_island1 = (p_harvest_island2 * 2) + ((1 - p_harvest_island2) * 0);
  payoff_island2 = (p_harvest_island1 * 4) + ((1 - p_harvest_island1) * 0);

  % Update future yield based on harvesting
  if p_harvest_island1 > 0.5
    p_harvest_island1 = p_harvest_island1 * 0.5; % Island 1's future yield reduced
  end
  if p_harvest_island2 > 0.5
    p_harvest_island2 = p_harvest_island2 * 0.5; % Island 2's future yield reduced
  end

  % Update probabilities for next round using replicator dynamics
  p_harvest_island1 = p_harvest_island1 + (p_harvest_island1 * (1 - p_harvest_island1) * (payoff_island1 - payoff_island2));
  p_harvest_island2 = p_harvest_island2 + (p_harvest_island2 * (1 - p_harvest_island2) * (payoff_island2 - payoff_island1));

  % Print results for each round
  fprintf('Round %d: Island 1 Harvest: %.2f, Island 2 Harvest: %.2f\n', r, p_harvest_island1, p_harvest_island2);
end

% Analyze final outcome
if p_harvest_island1 > 0.5 && p_harvest_island2 > 0.5
  fprintf('Both islands overharvested, future yields reduced.\n');
else
  fprintf('Sustainable outcome achieved at least by one island.\n');
end