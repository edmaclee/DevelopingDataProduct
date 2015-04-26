library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("This apps calculate your Age and Zodiac"),
  sidebarPanel(
    dateInput("birthday", "Please enter your birthday:"),
    checkboxGroupInput("display", "Do you want to:",
                       c("Display Age" = "1",
                         "Display your Zodiac" = "2")),
    # h3("Function:"),
    h5("This application calculate your age and show your zodiac"),
    h5("You choose what to show by clicking any of the above checkboxes."),
    h6("The ui.r and server.r scripts can be viewed via GitHub repository at:https://github.com/bretlaisy/DevelopingDataProduct.git")
  ),
  mainPanel(
    h5('Your Birthday is:'),
    verbatimTextOutput("age"),
    verbatimTextOutput("zod")
  )
))
