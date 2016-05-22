options(warn = -1)

#Server Fucntion will be called only once when we runt he app.
#rest of the time when the input value changes, the only that part of 
#code will be executing which depends on that input
shinyServer(function(input, output) {  
  
  output$sourcedataUI <- renderUI({  
    if(is.null(input$data1)){ 
      string1 <- "<h2 align='center'><strong> WELCOME</strong></h2>"
      string2 <- " <h4 align='center'>Select the Data File from the sidebar Menu before Proceeding further </h4>"
      HTML(paste(string1, string2, sep = '<br/>'))
      
    } else {
      tabBox(width = 12,
             tabPanel("DATA_VIEW", 
                      fluidRow(box(
                        width = NULL,            
                        dataTableOutput("sourceDataTable")
                      )))      
             )
    }
  })
  
  datasetInput <- reactive({
    switch(input$data1, 
           "mtcars" = mtcars,
           "faithful" = faithful
    )
  })
  
  
  output$sourceDataTable <- renderDataTable({
    dataset <- datasetInput()
  },options=list(pageLength=10, scrollX=TRUE))
  
  
 
  vars <-  reactive({
    switch(input$data1,  # data1 changes will cause the vars dropdown list to change based on dataset
           "mtcars" = names(mtcars),
           "faithful" = names(faithful)
           
    )})
  
  
  #function fetching the values for inputs based on data set   
  output$VX <- renderUI({
    selectInput(inputId = "varx", label = "Select First Variable", choices = vars())
  })
  
  
  output$Histograms <- renderPlot({
    dataset <- datasetInput()
    x <- dataset[, input$varx]
    # draw the histogram with the specified number of bins
    hist(x, main = paste("Histogram for" , input$varx), breaks = input$bins, col = 'blue', border = 'red', xlab = input$varx) 
    
    })
  
  
  #Summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
  
  
  })
