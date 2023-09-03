# NYC Pathfinder

This pathfinder uses Djikstra's shortest path algorithm for nonnegative weighted graphs, and can help you find the minimum distances required to get to different points on a graph given some starting node.

_I/O format_:
 - Program takes in two command-line inputs. The first being a weighted graph where the first line of the file is the number of vertices in the graph, followed by all the vertices on their own lines, followed by lines where two vertices are specified and then an edge weight
 - After internally constructing graph using first file the program will take in the next file which should be shortest path queries where each line contains a single source vertex from which we want to run the algorithm on.
 - Program will print out each vertex in lexicographic order as well as its minimum distance from the source vertex. If there's no path from the source to the destination vertex the minimum distance will be specified as infinity

Example input:  
graph:
```
10
34th_Street_Herald_Square
Union_Square
Grand_Central
Times_Square
59th_Street_Columbus_Circle
Jay_St-MetroTech
Atlantic_Ave
Washington_Square_Park
Chrysler_Building
Central_Park
34th_Street_Herald_Square Union_Square 5
34th_Street_Herald_Square Grand_Central 8
34th_Street_Herald_Square Times_Square 12
34th_Street_Herald_Square 59th_Street_Columbus_Circle 20
34th_Street_Herald_Square Jay_St-MetroTech 25
34th_Street_Herald_Square Atlantic_Ave 30
34th_Street_Herald_Square Washington_Square_Park 15
34th_Street_Herald_Square Chrysler_Building 10
34th_Street_Herald_Square Central_Park 25
Union_Square Grand_Central 6
Union_Square Times_Square 10
Union_Square 59th_Street_Columbus_Circle 15
Union_Square Jay_St-MetroTech 20
Union_Square Atlantic_Ave 25
Union_Square Washington_Square_Park 5
Union_Square Chrysler_Building 8
Union_Square Central_Park 20
Grand_Central Times_Square 5
Grand_Central 59th_Street_Columbus_Circle 10
Grand_Central Jay_St-MetroTech 15
Grand_Central Atlantic_Ave 20
Grand_Central Washington_Square_Park 15
Grand_Central Chrysler_Building 5
Grand_Central Central_Park 15
Grand_Central 34th_Street_Herald_Square 8
Grand_Central Union_Square 6
Times_Square 59th_Street_Columbus_Circle 10
Times_Square Jay_St-MetroTech 15
Times_Square Atlantic_Ave 20
Times_Square Washington_Square_Park 10
Times_Square Chrysler_Building 6
Times_Square Central_Park 12
Times_Square 34th_Street_Herald_Square 12
Times_Square Union_Square 10
Times_Square Grand_Central 5
```
query:
```
34th_Street_Herald_Square
Union_Square
Grand_Central
Times_Square
```

Result:
```
$./path NYC_graph.txt NYC_query.txt
34th_Street_Herald_Square 0
59th_Street_Columbus_Circle 18
Atlantic_Ave 28
Central_Park 23
Chrysler_Building 10
Grand_Central 8
Jay_St-MetroTech 23
Times_Square 12
Union_Square 5
Washington_Square_Park 10

34th_Street_Herald_Square 14
59th_Street_Columbus_Circle 15
Atlantic_Ave 25
Central_Park 20
Chrysler_Building 8
Grand_Central 6
Jay_St-MetroTech 20
Times_Square 10
Union_Square 0
Washington_Square_Park 5

34th_Street_Herald_Square 8
59th_Street_Columbus_Circle 10
Atlantic_Ave 20
Central_Park 15
Chrysler_Building 5
Grand_Central 0
Jay_St-MetroTech 15
Times_Square 5
Union_Square 6
Washington_Square_Park 11

34th_Street_Herald_Square 12
59th_Street_Columbus_Circle 10
Atlantic_Ave 20
Central_Park 12
Chrysler_Building 6
Grand_Central 5
Jay_St-MetroTech 15
Times_Square 0
Union_Square 10
Washington_Square_Park 10
```
