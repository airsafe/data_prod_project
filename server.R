library(UsingR) 
data(airquality)
shinyServer( 
        function(input, output) {
        output$newHist <- renderPlot({
                hist(airquality$Wind, xlab='Wind Speeds', col='green',main='Wind speed histogram') 
                mu <- input$mu
                lines(c(mu, mu), c(0, 50),col="red",lwd=5)
                mse <- mean((airquality$Wind - mu)^2)
                text(3, 20, paste("mu = ", mu))
                text(3, 15, paste("MSE = ", round(mse, 2)))
        })
} )