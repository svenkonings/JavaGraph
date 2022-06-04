# JavaGraph
Combine graph transformations and Java. This project has been developed as part of a Bachelor's thesis.

- Title: The Best of Both Worlds: Graph Transformations and Java
- Author: Sven Konings
- Year: 2017

## Paper abstract
This paper introduces an approach for combining graph transformations and Java programs.
The goal is to add Java based functionality directly to graph transformations and vice-versa.
Using this approach, one could enhance their existing Graph transformation models with Java code.
Or one could treat Java data as a graph and apply graph transformations to it.
This can make the code shorter and more expressive.
This approach relies on annotations to identify the intended graph structure of the Java program and uses annotated user defined methods to manipulate the graph structure.
The graph structure can be manipulated by applying the graph transformation rules defined in GROOVE.
GROOVE is a general purpose graph transformation tool set.
This paper researches which different types of graph transformations implemented in GROOVE are applicable to Java programs and how efficient they are.
This will be done by creating a GROOVE extension that treats Java programs as graphs.

The approach has complete support for the different types of graph transformations contained in GROOVE.
The approach does not scale well compared to GROOVE.
