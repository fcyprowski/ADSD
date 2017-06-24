library(shiny)
library(shinydashboard)

shinyUI(dashboardPage(
  ## Sidebar content
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Widgets", tabName = "widgets", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(),
      
      # Second tab content
      tabItem(),
      
      # third tab content
      tabItem()
      )
    )
  )
  )