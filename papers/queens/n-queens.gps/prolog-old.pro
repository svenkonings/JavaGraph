
tests(2, ['queen-2', 'queen-1']).
tests(3, ['queen-3', 'queen-2', 'queen-1']).
tests(4, ['queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(5, ['queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(6, ['queen-6', 'queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(7, ['queen-7', 'queen-6', 'queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(8, ['queen-8', 'queen-7', 'queen-6', 'queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(9, ['queen-9', 'queen-8', 'queen-7', 'queen-6', 'queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).
tests(10, ['queen-10', 'queen-9', 'queen-8', 'queen-7', 'queen-6', 'queen-5', 'queen-4', 'queen-3', 'queen-2', 'queen-1']).

% Usage: rule_application_result(+Rule, ?Graph)
% Finds the resulting graph after an application of the given rule.
rule_application_result(Rule, Graph) :-
 state(Source), % Get a source state
 state_transition(Source, Transition), % Get a transition from source state
 transition_event(Transition, Event), % Get the rule application event of the transition
 ruleevent_rule(Event, Rule), % Ensure that the given rule is the one that was applied
 transition_target(Transition, Target), % Get the target state of the transition
 state_graph(Target, Graph). % Get the graph of target state

% Usage: queens(+Rule, ?Graphs)
% Finds all state graphs with n queens.
queens(Rule, Graphs) :-
 findall(Graph, rule_application_result(Rule, Graph), Graphs).

report_rule(RuleName) :-
 rule(RuleName, Rule),
 queens(Rule, Graphs),
 write('  '), write(RuleName), write(': '), length(Graphs, L), write(L),
 write(' states.').

% Just call this predicate with the size of the start graph used.
report(N) :-
 write('Results for '), write(N), write(' queens:'), nl,
 tests(N, RuleNames),
 member(RuleName, RuleNames), report_rule(RuleName), nl, fail.
