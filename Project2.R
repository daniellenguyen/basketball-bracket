require(shiny)
require(plotly)
require(igraph)

#G = read.graph("graph.gml", format = c("gml"))

#dominator_tree(G, 12, "in")

## The example from the paper
g <- graph_from_literal(R-+A:B:C, A-+D, B-+A:D:E, C-+F:G, D-+L,
               E-+H, F-+I, G-+I:J, H-+E:K, I-+K, J-+I,
               K-+I:R, L-+H)
dtree <- dominator_tree(g, root="R")
layout <- layout_as_tree(dtree$domtree, root="R")
layout[,2] <- -layout[,2]
plot(dtree$domtree, layout=layout, vertex.label=V(dtree$domtree)$name)
