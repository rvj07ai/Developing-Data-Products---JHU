require(shiny)
require(shinydashboard) 

library(shiny)
library(shinydashboard)


#Header
header <- dashboardHeader(title = 'Developing Data Products - JHU Project', titleWidth = 400)


sidebar <- dashboardSidebar(
  sidebarMenu(id="sidebarmenu",
              menuItem("Data Explorer", tabName = "sourcedata", icon = icon("file-excel-o")),
              conditionalPanel("input.sidebarmenu == 'sourcedata'",
                               selectInput(inputId = "data1", label = "Choose a Dataset", choices = c("mtcars","faithful"))
              ),
              
              menuItem("Data  Distribution", tabName = "distribution",icon=icon("bar-chart-o")),
              conditionalPanel(condition = "input.sidebarmenu == 'distribution' && input.disttabset == 'OneDimPlot'",
                                                              uiOutput("VX"),
                               sliderInput("bins", "No. of Bins", min = 5 , max = 50 , value = 8)
              ),
              conditionalPanel(condition = "input.sidebarmenu == 'distribution' && input.disttabset == 'summary_view'")
                               
              )
           
  )



  
body <- dashboardBody( 
  tabItems( 
    tabItem(tabName = "sourcedata",
            uiOutput("sourcedataUI")
    ),
    tabItem(tabName = "distribution",
            tabBox(width = 12,
                   id = "disttabset",
                   tabPanel("Histogram",value = "OneDimPlot",
                            fluidRow(box(width=12,suppressWarnings(plotOutput("Histograms",height = 300))))
                   ),
                   tabPanel("Summary Table", value = "summary_view",
                            fluidRow(box(width=12, verbatimTextOutput("summary")))
                   )
            )
    )))



dashboardPage(header,sidebar,body,skin="blue")