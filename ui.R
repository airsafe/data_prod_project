shinyUI(pageWithSidebar( 
        headerPanel("The Wind Cries Mary"), 
        sidebarPanel(
        sliderInput('mu', 'Guess the mean wind speed',value = 9.0, min = 1.7, max = 20.7, step = 0.05,) 
        ),
        mainPanel( 
                plotOutput('newHist')
        ) 
        ))