library(shiny)

shinyServer(function(input, output) {
    
    
    output$bar <- renderPlot({
      Data1 <- c(input$Flights*250,input$Trains*500,input$Buses*30,input$Taxis*4)
      Mode_transport <- c("Flight","Train","Bus","Taxi")
      Number <- c(input$Flights*250,input$Trains*500,input$Buses*30,input$Taxis*4)
      fig <- barplot(Data1,names.arg = Mode_transport,xlab = "Mode of Transport",ylab = "No of People")
    
      output$Total_People = renderText((input$Flights*250)+(input$Trains*500)+(input$Buses*30)+(input$Taxis*4))
      })
      
})
