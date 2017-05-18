
% Usage: rule_application_result(+Rule, ?Graph)
% Finds the resulting graph after an application of the given rule.
rule_application_result(Rule, Graph) :-
 state(Source), % Get a source state
 state_transition(Source, Transition), % Get a transition from source state
 transition_event(Transition, Event), % Get the rule application event of the transition
 ruleevent_rule(Event, Rule), % Ensure that the given rule is the one that was applied
 transition_target(Transition, Target), % Get the target state of the transition
 state_graph(Target, Graph). % Get the graph of target state

% Usage: leaders(?Graph)s
% Finds all state graphs with a leader elected.
leaders(Graphs) :-
 rule('exists-leader', Rule), % Get the rule object
 findall(Graph, rule_application_result(Rule, Graph), Graphs).
