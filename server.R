library(shiny)

mpg = function(cyl) {37.8846+(-2.8758)*cyl}


shinyServer(function(input, output) {
            
      output$inputValue = renderPrint({input$cyl})
      output$prediction = renderPrint({mpg(input$cyl)})
})