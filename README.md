# NYC Pathfinder

This pathfinder uses Djikstra's shortest path algorithm for nonnegative weighted graphs, and can help you find the minimum distances required to get to different points on a graph given some starting node.

_I/O format_:
 - Program takes in two command-line inputs. The first being a weighted graph in the format:

<num_vertices>  
vertex_a  
vertex_b  
...  
vertex_a vertex_b <edge_weight>  
...  

 - After internally constructing graph using first file the program will take in the next file which should be shortest path queries where each line contains a single source vertex from which we want to run the algorithm on.
 - Program will print out each vertex in lexicographic order as well as its minimum distance from the source vertex. If there's no path from the source to the destination vertex the minimum distance will be specified as infinity
