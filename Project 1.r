require(shiny)
require(plotly)
require(igraph)

doLayout = function(G, layoutFunc, title = "") {
	L = layoutFunc(G)
	vs = V(G)
	Xn = L[,1]
	Yn = L[,2]
	es = G %>% get.edgelist %>% as.data.frame

	a1 = list()
	a2 = list()
	for (i in 1:length(es[1]$V1)) {
		v1 = es[i,]$V1
		v2 = es[i,]$V2

		a1[[i]] = list(
			x = Xn[v1],
			y = Yn[v1],
			text = paste(v1),
			xref = "x",
			yref = "y"
		)

		a2[[i]] = list(
			x = Xn[v2],
			y = Yn[v2],
			text = paste(v2),
			xref = "x",
			yref = "y"
		)
	}

	# print(es)

	network = plot_ly(type = "scatter", x = Xn, y = Yn, mode = "markers",
		annotations = append(a1, a2))

	# print(network)

	edgeShapes = list()
	for (i in 1:length(es[1]$V1)) {
		v0 = es[i,]$V1
		v1 = es[i,]$V2

		print(v0)
		print(paste("(", Xn[v0], ", ", Yn[v0], ")"))

		edgeShapes[[i]] = list(
			type = "line",
			line = list(color = "#030303", width = 0.3),
			x0 = Xn[v0],
			y0 = Yn[v0],
			x1 = Xn[v1],
			y1 = Yn[v1]
		)
	}

	network %>% layout(title = title, shapes = edgeShapes, annotations = a2,
		xaxis = list(title = "", showgrid = TRUE, showticklabels = TRUE, zeroline = TRUE),
		yaxis = list(title = "", showgrid = TRUE, showticklabels = TRUE, zeroline = TRUE)
	)
}

G = read.graph("graph.gml", format = c("gml"))

# shiny
ui = fluidPage(
	titlePanel("Test Graph"),
	plotlyOutput("fr"),
	# plotlyOutput("tree"),
	plotlyOutput("circle")
)

server = function(input, output) {
	output$fr   = renderPlotly(doLayout(G, layout.fruchterman.reingold, title = "FR"))
	# output$tree = renderPlotly(doLayout(G, layout_as_tree, title = "Tree"))
	output$circle = renderPlotly(doLayout(G, layout.circle, title = "Circle"))
}


shinyApp(ui = ui, server = server)
