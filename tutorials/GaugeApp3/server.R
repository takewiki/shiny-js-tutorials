shinyServer(function(input, output, session) {

  output$Gauge1 <- renderC3Gauge({
    invalidateLater(5000, session)
    val <- round(runif(1,min=0,max=100),2)
    C3Gauge(message = val)
  })
  
  output$Gauge2 <- renderC3Gauge({
    invalidateLater(5000, session)
    val <- round(runif(1,min=0,max=100),2)
    C3Gauge(message = val)
  })
  
  output$Gauge3 <- renderC3Gauge({
    invalidateLater(5000, session)
    val <- round(runif(1,min=0,max=100),2)
    C3Gauge(message = val)
  })
  
  output$Gauge4 <- renderC3Gauge({
    invalidateLater(5000, session)
    val <- round(runif(1,min=0,max=100),2)
    C3Gauge(message = val)
  })
  
  output$PieProcess <- renderC3PieChart({
    invalidateLater(5000, session)
    
    value <- data.frame(a=runif(1,0,10),b=runif(1,0,10),c=runif(1,0,10))
    C3PieChart(value = value)
  })
  
  output$PieLabel <- renderC3PieChart({
    invalidateLater(5000, session)
    value <- data.frame(a=runif(1,0,10),b=runif(1,0,10),c=runif(1,0,10))
    C3PieChart(value = value)
  })
  
  output$PieProduct <- renderC3PieChart({
    invalidateLater(5000, session)
    value <- data.frame(a=runif(1,0,10),b=runif(1,0,10),c=runif(1,0,10))
    C3PieChart(value = value)
  })
  
  output$PieBranch <- renderC3PieChart({
    invalidateLater(5000, session)
    value <- data.frame(a=runif(1,0,10),b=runif(1,0,10),c=runif(1,0,10))
    C3PieChart(value = value)
  })
  
  output$stackedAreaChart <- renderC3StackedAreaChart({
    invalidateLater(5000, session)
    
    timeData <- c("2010-01-01","2010-02-01","2010-03-01","2010-04-01","2010-05-01","2010-06-01","2010-07-01","2010-08-01","2010-09-01","2010-10-01")
    C3StackedAreaChart(data.frame(data1=runif(10,0,10),data2=runif(10,0,10),data4=runif(10,0,10)),timeData=timeData)
  })
  
})
