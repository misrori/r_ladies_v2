library(shiny)
library(plotly)
library(DT)
library(data.table)
library(shinythemes)
library(shinycssloaders)
library(shinydashboard)
#--------------------------------------------------------------#
################          Version1        #####################
#--------------------------------------------------------------#

#####

fluidPage(
        uiOutput('coins'),
        radioButtons('time', 'Choose agregation', choiceNames = c('minute','hour','day'), choiceValues = c('histominute','histohour','histoday'), selected = 'histoday' ),
        dateRangeInput('dateRange', label = 'Date range', start = Sys.Date() - 30, end = Sys.Date()),

        #https://shiny.rstudio.com/reference/shiny/1.0.1/tabsetPanel.html
        tabsetPanel(
          tabPanel("Plot", plotlyOutput("summary_plot") ),
          tabPanel("cryptok",dataTableOutput('coin_data') )

          )
)

#####


#--------------------------------------------------------------#
################          Version2        #####################
#--------------------------------------------------------------#

#####

# 
# fluidPage(theme = shinytheme("slate"),
# #https://shiny.rstudio.com/reference/shiny/1.0.1/navbarPage.html    https://rstudio.github.io/shinythemes/
# 
#           navbarPage(
#             title="Crypto report",
#             tabPanel("Charts",
# 
#                      sidebarLayout(
# 
#                          sidebarPanel(
# 
#                               uiOutput('coins'),
#                                 radioButtons('time', 'Choose agregation', choiceNames = c('minute','hour','day'),
#                                              choiceValues = c('histominute','histohour','histoday'), selected = 'histoday' ),
#                                 dateRangeInput('dateRange',
#                                                label = 'Date range',
#                                                start = Sys.Date() - 30, end = Sys.Date())
#                          ),#sidebarpanel
#                          mainPanel(
# 
#                               withSpinner( plotlyOutput("summary_plot") ,type = 4)
#                          )#mainpanel
# 
#                        )#sidebarlayaut
# 
#             ),# tabpanel
# 
#             tabPanel('Coin list',
#                      withSpinner(dataTableOutput('coin_data'),type = 4)
#             )
# 
#     )
# )
# 


#####


#--------------------------------------------------------------#
################          Version3        #####################
#--------------------------------------------------------------#

#####

# 
# shinyUI(
#   
#   dashboardPage(
#     
#     dashboardHeader(title= 'Steem detective'),
#     dashboardSidebar(
#       
#       uiOutput('coins'),
#       radioButtons('time', 'Choose agregation', choiceNames = c('minute','hour','day'),
#                    choiceValues = c('histominute','histohour','histoday'), selected = 'histoday' ),
#       dateRangeInput('dateRange',
#                      label = 'Date range',
#                      start = Sys.Date() - 30, end = Sys.Date()),
#       
#       #good video of shinydashboard ui  https://www.youtube.com/watch?v=fUXBL5bk20M
#       sidebarMenu(id='tabs',
#                   menuItem('Plot', tabName = 'my_plot', icon = icon("home")),
#                   menuItem('Data', tabName = 'my_data', icon = icon("user"))
#   
#                   
#       )#sidebarmenu 
#     ),#dashboardSidebar
#     dashboardBody(
#       tabItems(
#         tabItem(
#           tabName = "my_plot",
#               withSpinner( plotlyOutput("summary_plot") ,type = 4)
#         ),
#         
#         tabItem(
#           tabName = "my_data",
#           withSpinner(dataTableOutput('coin_data'),type = 4)
#         )
#         
#     )#tabitems
#     )
# )
# 
# )
# 

#####

