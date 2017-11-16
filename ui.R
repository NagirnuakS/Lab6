library("shiny")

shinyUI(pageWithSidebar(
  headerPanel("Random Generator"),
  
  sidebarPanel(
    sliderInput("min", "Min Value", 0, 100, 5, step = 1, round = TRUE),
    hr(),
    sliderInput("max", "Max Value", 0, 100, 95, step = 1, round = TRUE),
    hr(),
    checkboxInput("integer", "Only integer numbers", value = TRUE),
    actionButton("button", "Generate Value!", width = "100%")
  ),
  
  mainPanel(
    textOutput("text")
  )
))