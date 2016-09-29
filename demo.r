require(shiny)
require(igraph)
require(visNetwork)


ui <- fluidPage(
	sidebarLayout(
		sidebarPanel(
			sliderInput("obs", "Number of observations:", 
			min = 10, max = 500, value = 100)
		),
	mainPanel(plotOutput("plot1"))
	)
)

server <- function(input, output) {
	
	output$plot1 <- renderPlot({
		hist(rnorm(input$obs), col = 'darkgray', border = 'white')
	})
}

shinyApp(ui = ui, server = server)
