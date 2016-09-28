require(visNetwork)
require(igraph)

G = read.graph("graph.gml", format = c("gml"))
vs = V(G)
vs = data.frame(id = vs$name, region = vs$label)
es = G %>% get.edgelist %>% as.data.frame
colnames(es) = c("from", "to")
visNetwork(vs, es, width = "100%")
