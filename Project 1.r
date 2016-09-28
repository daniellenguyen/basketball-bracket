require(shiny)
require(igraph)
require(visNetwork)

G = read.graph("graph.gml", format = c("gml"))
vs = V(G)
vs = data.frame(id = vs$name, label = vs$name, region = vs$label)
es = G %>% get.edgelist %>% as.data.frame
colnames(es) = c("from", "to")

server = function(input, output) {
	output$default = renderVisNetwork(
		visNetwork(vs, es, width = "100%") %>% visEdges(arrows = "from"))
}

ui <- fluidPage(
	titlePanel("This is a title"),
    visNetworkOutput("default", height = "900px")
)

shinyApp(ui = ui, server = server)
