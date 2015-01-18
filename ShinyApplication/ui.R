# ui.R file

library(shiny)

# Define UI for application that predicts pregnancy due date
shinyUI(pageWithSidebar(
  
  # Application title
  titlePanel("Pregnancy Calculator for Due Dates"),
  
  # Sidebar 
  sidebarPanel(
    #Date input for last mentrual period
    dateInput("lmp", "Insert date of last menstrual period")
    ),
    
  # Main Panel for resulf 
  mainPanel(
    h4("The expected due date is: "),
    textOutput("dueDate"),
    
    h4("There is 68% chance that sponteneous labour begin: "),
    textOutput("dueDate1SD")
    
  )

))