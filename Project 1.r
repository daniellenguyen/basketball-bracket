require(shiny)
require(plotly)
require(igraph)

doLayout = function(G, layoutFunc, title = "") {
	L = layoutFunc(G)
	Xn = L[,1]
	Yn = L[,2]
	vs = V(G)
	es = G %>% get.edgelist %>% as.data.frame

	network = plot_ly(type = "scatter", x = Xn, y = Yn, mode = "markers",
						text = vs$label, hoverinfo = "text")

	edgeShapes = list()
	for (i in (1:length(es[1]$V1))) {
		v1 = es[i,]$V1
		v2 = es[i,]$V2

		edgeShapes[[i]] = list(
			type = "line",
			line = list(color = "#030303", width = 0.3),
			x0 = Xn[v1],
			y0 = Yn[v1],
			x1 = Xn[v2],
			y1 = Yn[v2]
		)
	}

	network %>% layout(title = title, shapes = edgeShapes,
		xaxis = list(title = "", showgrid = FALSE, showticklabels = FALSE, zeroline = FALSE),
		yaxis = list(title = "", showgrid = FALSE, showticklabels = FALSE, zeroline = FALSE)
	)
}

G = read.graph("test_graph.gml", format = c("gml"))

# shiny
ui = fluidPage(
	titlePanel("Test Graph"),
	plotlyOutput("fr"),
	plotlyOutput("circ")
	# plotlyOutput("tree")
)

server = function(input, output) {
	output$fr   = renderPlotly(doLayout(G, layout.fruchterman.reingold, title = "Fruchterman Reingold"))
	output$circ = renderPlotly(doLayout(G, layout.circle,               title = "Circle"))
	# output$tree = renderPlotly(doLayout(G, layout_as_tree, title = "Tree"))
}


shinyApp(ui = ui, server = server)
