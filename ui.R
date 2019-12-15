library(shiny)
library(shinydashboard)
library(shinyBS)
library(leaflet)
library(DT)
library(data.table)
library(plotly)




# Define UI for application that draws a histogram
dashboardPage(
    dashboardHeader(title = 'Map Routing'),
    dashboardSidebar(width = 120,
         textInput('startlat','Start Lat', value = 46.49067),
         textInput('startlong','Start Long', value = 11.33982),
         textInput('endlat','End Lat', value = 46.06787),
         textInput('endlong','End Long', value = 11.12108)),
    dashboardBody(
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"),
        leafletOutput('map'))
)



