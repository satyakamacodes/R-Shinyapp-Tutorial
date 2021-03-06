library(shiny)
shinyUI(fluidPage(
  headerPanel("Shiny App Example with Video and Image"),

  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload the file", multiple = T), # fileinput() function is used to get the file upload contorl option
      h6("Default max. file size is 5MB"),
      hr(),
      h5("Select the read.table parameters below"),
      checkboxInput(inputId = 'header', label = 'Header', value = FALSE),
      checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
      br(),
      radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t', Space=''), selected = ','),
      h5(textOutput("counter")),
      h6(" Powered by:"),
      tags$img(src='RStudio-Ball.png', height=50, width=50),
      tags$style("body{background-color:linen; color:brown}"),
      tags$style(".span12{font-style: oblique;border-style: solid}"),
      tags$style(".span4{border-style: solid}"),
      tags$style(".span8{border-style: solid}")
      
      
      ),
    mainPanel(
      uiOutput("tb")

# use below code if you want the tabset programming in the main panel. If so, then tabset will appear when the app loads for the first time.
#       tabsetPanel(tabPanel("Summary", verbatimTextOutput("sum")),
#                   tabPanel("Data", tableOutput("table")))
      )
    
    )
  ))