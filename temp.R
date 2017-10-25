install.packages("igraph")


nodes <- read.csv(file = "nodes.csv", head = TRUE)
head(nodes)

edges <- read.csv(file = "edges-nb-steps.csv", head = TRUE)
head(edges)

library(igraph)
net <- graph_from_data_frame(d=edges, vertices=nodes, directed=T) 
V(net)$size <- degree(net, mode = "in")
