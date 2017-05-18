
%Example query to find a valid Product (it checks the LTS, rules, transitions, state graphs, flags).
product(Product) :-
 rule('FeatureModelConfiguration',Rule),  
 state(State), state_graph(State, StateGraph), state_transition(State,Transition), 
 transition_event(Transition,Event), ruleevent_rule(Event,Rule), 
 findall(Feature, (node_self_edges(StateGraph,Node,['selected']), label('name',Label), node_with_attribute(StateGraph,Node,Label,Feature)), Product).

%Example query to find all valid Products
allproducts(AllProducts) :-
bagof(P,product(P),AllProducts).

%product(Product), member(Feature,Product), has_quality_value(Feature,cost,10)


%Facts

quality_attribute(security).
quality_attribute(adaptability).
quality_attribute(accessibility).

has_quality('Surveillance',security).
has_quality('Alarm',security).
has_quality('RemoteCommunication', accessibility).
has_quality('SmartControl',adaptability).

has_quality_value('Alarm', cost, 5).
has_quality_value('Siren', cost, 15).
has_quality_value('Bell', cost, 10).
has_quality_value('Light', cost, 5).
has_quality_value('AlarmAutomation', cost, 10).
has_quality_value('MessageAutomation', cost, 20).
has_quality_value('HomeAutomation', cost, 1).
has_quality_value('AccidentDetection', cost, 25).
has_quality_value('MotionDetection', cost, 25).
has_quality_value('LightSimulation', cost, 10).
has_quality_value('EnergySaving', cost, 5).
has_quality_value('ClimateControl', cost, 10).
has_quality_value('HeatingManagement', cost, 10).
has_quality_value('WindowsManagement', cost, 10).
has_quality_value('SmartControl', cost, 10).
has_quality_value('WhiteGoodsControl', cost, 10).
has_quality_value('RemoteCommunication', cost, 10).



