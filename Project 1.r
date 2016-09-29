require(shiny)
require(igraph)
require(visNetwork)

G = read.graph("graph.gml", format = c("gml"))
vs = V(G)
vs = data.frame(id = vs$name, label = vs$name, group = vs$label)
es = G %>% get.edgelist %>% as.data.frame
colnames(es) = c("from", "to")

regions = vs[['group']]

server = function(input, output) {
	output$default = renderVisNetwork(
		visNetwork(vs, es, width = "100%") %>% 
		visEdges(arrows = "from") %>%
		visGroups %>%
		visLegend
	)
}

ui <- fluidPage(
	titlePanel("NCAA Teams"),
    visNetworkOutput("default", height = "900px")
)

shinyApp(ui = ui, server = server)

# group by
# 	- region
# 	- public/private
#	- tuition
