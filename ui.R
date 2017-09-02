
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Select the files to be merged"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      fileInput("csvs", label = "upload csvs here",
                multiple = TRUE)
      ),

    # Show a plot of the generated distribution
    mainPanel(textOutput("count")
    )
  )
))
