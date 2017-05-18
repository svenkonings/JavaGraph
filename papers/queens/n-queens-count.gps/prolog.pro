% Usage: rule_application_target(+RuleName, ?Target)
% Finds the resulting state after an application of a rule with a given name.
rule_application_target(RuleName, Target) :-
  state(Source), % Get a source state in the LTS
  state_transition(Source, Transition), % Get a transition from source state
  edge_label(Transition, RuleName), % Test whether the transition label is the one we seek
  transition_target(Transition, Target). % Get the target state from the transition

% Predicate to print the number of final states with a given N queens count.
report(N) :-
  length(RuleNames, N), append(RuleNames, _, % Select the N first elements of the list of transition labels
  ['count(1)', 'count(2)', 'count(3)', 'count(4)', 'count(5)', 'count(6)', 'count(7)', 'count(8)', 'count(9)', 'count(10)']),
  member(RuleName, RuleNames), % Pick one rule name to use
  findall(State, rule_application_target(RuleName, State), States), % Collect all states where the rule was applied
  write('  '), write(RuleName), write(': '), length(States, L), write(L), write(' states.'), nl, % Report
  fail % Fail so we backtrack to 'member' and pick another rule name
  .