random <- function(min, max, integer){
  if(min > max){
    return ("The minimum number is greater than the maximum")
  }
  value <- 0
  
  if(min == max){
    value <- min
  }
  
  if(integer == TRUE){
    value <- sample(min:max, 1)
  } else {
    value <- runif(1, min, max)
  }
  
  return (paste("The generated value --->", value))
}

shinyServer(
  function(input, output) {
    output$text <- eventReactive(input$button, {
      random(input$min, input$max, input$integer)
    })
  }
)