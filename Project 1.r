require(shiny)
require(plotly)
require(igraph)

doLayout = function(G, layoutFunc, title = "") {
	L = layoutFunc(G)
	Xn = L[,1]
	Yn = L[,2]
	vs = V(G)
	es = G %>% get.edgelist %>% as.data.frame # correct

	print(Xn)

	network = plot_ly(type = "scatter", x = Xn, y = Yn, mode = "markers",
						text = vs$name, hoverinfo = "text")

	edgeShapes = list()
	for (i in (1:length(es[1]$V1))) {
		v0 = es[i,]$V1
		v1 = es[i,]$V2

		edgeShapes[[i]] = list(
			type = "line",
			line = list(color = "#030303", width = 0.3),
			x0 = Xn[v0],
			y0 = Yn[v0],
			x1 = Xn[v1],
			y1 = Yn[v1]
		)
		print(paste(v0, "->", v1))
		print(paste("(", Xn[v0], ", ", Yn[v0], ") -> (", 
						 Xn[v1], ", ", Yn[v1], ")", sep = ""))
		print("")
	}

	network %>% layout(title = title, shapes = edgeShapes,
		xaxis = list(title = "", showgrid = TRUE, showticklabels = TRUE, zeroline = TRUE),
		yaxis = list(title = "", showgrid = TRUE, showticklabels = TRUE, zeroline = TRUE)
	)
}

G = read.graph("graph.gml", format = c("gml"))

# shiny
ui = fluidPage(
	titlePanel("Test Graph"),
	plotlyOutput("fr"),
	plotlyOutput("tree")
)

server = function(input, output) {
	output$fr   = renderPlotly(doLayout(G, layout.fruchterman.reingold, title = "FR"))
	# output$tree = renderPlotly(doLayout(G, layout_as_tree, title = "Tree"))
}


shinyApp(ui = ui, server = server)
