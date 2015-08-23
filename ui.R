library(shiny)

shinyUI(pageWithSidebar(
      
      # Application title
      headerPanel("Estimated Miles/Gallon (US) based on number of cylinders"),
      
      # Input
      sidebarPanel(
            h4("About: the app estimates the miles/gallon for a car based on its number of cylinders."),            
            numericInput('cyl','Number of cylinders (min 4, max 8)', 4, min = 4, max = 8, step = 1),
            submitButton('Submit')
             ),
      
      # Output
      mainPanel(
            h3('Results'),
            h4('You entered'),
            verbatimTextOutput("inputValue"),
            h4('Estimated MPG'),
            verbatimTextOutput("prediction")            
      )
))