require(shiny)
require(igraph)
require(visNetwork)

G = read.graph("graph.gml", format = c("gml"))
vs = V(G)
vs = data.frame(id = vs$name, label = vs$name, group = vs$label)
es = G %>% get.edgelist %>% as.data.frame
colnames(es) = c("from", "to")

splitGroups = vs$group %>% as.character %>% strsplit(",") %>% as.data.frame %>% t
regions 	 = splitGroups[,1]
demographics = splitGroups[,2]

vs$group = regions
solver = 'barnesHut'

server = function(input, output) {
	observeEvent(input$demographicButton, {
		vs$group = demographics
		output$default = renderVisNetwork(
			visNetwork(vs, es, width = "100%") %>% 
			visEdges(arrows = "from") %>%
			visGroups %>%
			visLegend %>%
			visPhysics(solver = solver)
		)
	})

	observeEvent(input$regionButton, {
		vs$group = regions
		output$default = renderVisNetwork(
			visNetwork(vs, es, width = "100%") %>% 
			visEdges(arrows = "from") %>%
			visGroups %>%
			visLegend %>%
			visPhysics(solver = solver)
		)
	})

	observeEvent(input$solver, {
		solver = input$solver
		output$default = renderVisNetwork(
			visNetwork(vs, es, width = "100%") %>%
			visEdges(arrows = "from") %>%
			visGroups %>%
			visLegend %>%
			visPhysics(solver = solver)
		)
	})

	output$default = renderVisNetwork(
		visNetwork(vs, es, width = "100%") %>%  # Kamada Kawai layout algorithm
		visEdges(arrows = "from") %>%
		visGroups %>%
		visLegend %>%
		visPhysics(solver = solver)
	)
}

ui <- fluidPage(
	titlePanel("NCAA Teams"),
    actionButton(inputId = "regionButton", 	  	label = "Show Regions"),
    actionButton(inputId = "demographicButton", label = "Show Demographics"),
    radioButtons("solver", "Physics Solver:",
		c("Barnes Hut"    = "barnesHut",
		  "Repulsion"     = "repulsion",
		  "Force Atlas 2" = "forceAtlas2Based")
	),
    visNetworkOutput("default", height = "800px")
)

shinyApp(ui = ui, server = server)

# group by
# 	- region
# 	- public/private
#	- tuition
