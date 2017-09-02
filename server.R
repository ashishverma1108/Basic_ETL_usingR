
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(data.table)
shinyServer(function(input, output) {

 # output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
 #    x    <- faithful[, 2]
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
 #   hist(x, breaks = bins, col = 'darkgray', border = 'white')

#  })
  mycsvs<-reactive({
    rbindlist(lapply(input$csvs$datapath, fread),
              use.names = TRUE, fill = TRUE)
  })
  output$count <- renderText(nrow(mycsvs()))
  
 
})
