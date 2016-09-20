require(shiny)
# require(plotly)

bracket = read.csv("NCAA data.csv", na.strings="")

ui = fluidPage(tableOutput("showDF"))
server = function(input, output) {
	output$showDF = renderTable(bracket)
}

shinyApp(ui = ui, server = server)
