# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).


# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("November Communications Report"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("program", "Program:", 
                    choices=colnames(as.matrix(data))),
        hr(),
        helpText("Data from xxxxxx")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("commPlot")  
      )
      
    )
  )
)
