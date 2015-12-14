
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).


# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$commPlot <- renderPlot({
    
    # Render a barplot
    barplot(as.matrix(data)[,input$program]*100000, 
            main=input$program,
            ylab="Viewership",
            xlab="input$program",
            col = colours)
  })
})
