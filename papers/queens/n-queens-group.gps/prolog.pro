
% Usage: rule_application_target(+Rule, ?Target)
% Finds the resulting state after an application of the given rule.
rule_application_target(Rule, Target) :-
 state(Source), % Get a source state
 state_transition(Source, Transition), % Get a transition from source state
 transition_event(Transition, Event), % Get the rule application event of the transition
 ruleevent_rule(Event, Rule), % Ensure that the given rule is the one that was applied
 transition_target(Transition, Target). % Get the target state of the transition

% Just call this predicate with the size of the start graph used to get the report.
report(N) :-
 length(RuleNames, N), append(RuleNames, Dummy, ['queen-1', 'queen-2', 'queen-3', 'queen-4', 'queen-5',
                                                 'queen-6', 'queen-7', 'queen-8', 'queen-9', 'queen-10']),
 member(RuleName, RuleNames),
 rule(RuleName, Rule),
 findall(State, rule_application_target(Rule, State), States),
 write('  '), write(RuleName), write(': '), length(States, L), write(L), write(' states.'), nl,
 fail.
