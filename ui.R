library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Number of people going to Mumbai daily"),

    # Sidebar with a slider input for number of Flights, Trains, Buses and Taxes
    sidebarLayout(
        sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="https://rpubs.com/mittalrajat3233/595175")),
            sliderInput("Flights",
                        "Number of Flights:",
                        min = 0,
                        max = 10,
                        value = 0),
        
        
      
            sliderInput("Trains",
                        "Number of Trains:",
                        min = 0,
                        max = 12,
                        value = 0),
        
        
       
            sliderInput("Buses",
                        "Number of Buses:",
                        min = 0,
                        max = 20,
                        value = 0),
        
            
            sliderInput("Taxis",
                        "Number of Taxis:",
                        min = 0,
                        max = 10,
                        value = 0)
        ),

        # Show a plot of the generated distribution
        mainPanel(
        
            h3("Total Number of People"),
            textOutput("Total_People"),
            h3("Graph of People Coming from Different Mode of Transport"),
            plotOutput("bar")
        )
    )
))
