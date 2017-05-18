
% Finds the resulting graph after an application of the given rule.
% Usage: rule_application_result(+Rule, ?Graph)
rule_application_result(Rule, Graph) :-
 state(Source), % Get a source state
 state_transition(Source, Transition), % Get a transition from source state
 transition_event(Transition, Event), % Get the rule application event of the transition
 ruleevent_rule(Event, Rule), % Ensure that the given rule is the one that was applied
 transition_target(Transition, Target), % Get the target state of the transition
 state_graph(Target, Graph). % Get the graph of target state

% Returns a feature that is selected in the given graph.
% Usage: selected_feature(+Graph, ?Feature)
selected_feature(Graph, Feature) :-
 node_self_edges(Graph, Node, ['selected']), % Get the selected nodes
 label('name', Label), % The attribute label
 node_with_attribute(Graph, Node, Label, Feature). % Get the feature name

% Finds a valid product.
% Usage: product(?Product)
product(Product) :-
 rule('configure-model', Rule), % Get the rule object
 % Get the graph resulting from rule application
 rule_application_result(Rule, Graph),
 % Collect all features selected to compose the product.
 findall(Feature, selected_feature(Graph, Feature), Product).

% Extra facts about feature costs.
cost('A', 5).
cost('B', 2).
cost('C', 3).
cost('D', 1).
cost('E', 8).

% Computes the cost of a product.
sum_costs([], 0).
sum_costs([H|T], Total) :- sum_costs(T, CT), cost(H, CH), Total is CH+CT.

% Checks if the given product is within the given budget.
within_budget(Budget, Product) :- sum_costs(Product, Cost), Cost =< Budget.
