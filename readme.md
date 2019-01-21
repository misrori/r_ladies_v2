
# R Ladies v2

* My personal story of crypto http://bit.ly/blockchain-stories-chapter-one
* Trading view read candle chart https://www.tradingview.com/
* Coinmarketcap steem, steemdollar, steemblockchain  
    + https://coinmarketcap.com/
    + https://coinpaprika.com/
    + https://steemprojects.com/    
* My favorite chanels: 
    + https://www.youtube.com/channel/UCCatR7nWbYrkVXdxXb4cGXw
    + https://www.youtube.com/channel/UC67AEEecqFEc92nVvcqKdhA
* Steemdetective https://steemdetective.com/

***

## Ok lets deep dive into shiny
    + https://www.youtube.com/watch?v=_0ORRJqctHE&list=PL6wLL_RojB5xNOhe2OTSd-DPkMLVY9DfB

### What is shiny?
* ui.R is the part for the user interface
    + basic shiny 
    + shinythemes https://rstudio.github.io/shinythemes/
    + shinydashboard:  https://rstudio.github.io/shinydashboard/appearance.html
    + output:
        + textOutput
        + plotOutput
        + plotlyOutput
        + dataTableOutput
    + use the elementname send out from the server
    
* server.R this part is hiden from the user here we calculate and make the elements showed in the ui:
    + render: plot, text, plotly, ggplot, 
        + datatable: https://rstudio.github.io/DT/  
        + network: https://christophergandrud.github.io/networkD3/
        + map: https://rstudio.github.io/leaflet/shiny.html
        + ui: render ui element to make the values of the element in the server side.
    + reactive values
    + reactive function
    + to send to ui, use output$elementname

* shinyapps.io:
   + Place where you can host your 5 application for free, in every month 25 hours
   + Registration: http://www.shinyapps.io/

* Google analytics
    
 
 


