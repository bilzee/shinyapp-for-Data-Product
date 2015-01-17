# server.R file

library(shiny)

# Define server logic 
shinyServer(function(input, output) {
  
  # Naegeles rule for pregnancy due date estimation is given by
  # LastMonthlyPeriod + 9 months + 7 days 
  
  # variables to explain the prediction formula
  monthInDays <- 9 * 30
  days <- 7
  errorFor31DayMonths <- 3
  SD <- 13
  totalDays <- monthInDays + days + errorFor31DayMonths

  # output
  output$dueDate <- renderPrint(input$lmp + totalDays) 
  output$dueDate1SD <- renderPrint(input$lmp + totalDays - SD)
})