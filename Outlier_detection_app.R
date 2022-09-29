library(shiny)
ui <- fluidPage(
  titlePanel("Outlier detection from CSV file"),
  sidebarLayout(
    sidebarPanel(
      fileInput("data_file", "Choose a valid CSV File",
        multiple = FALSE,
        accept = c("text/csv", "text/comma-separated-values,text/plain", ".csv")),
      checkboxInput("header", "Header", TRUE),
      textInput("coln", "Enter column no. in which outliers are to detected", "1")
    ),
    mainPanel(
      plotOutput("boxplot")
    )
  )
)
server <- function(input, output) {
  output$boxplot <- renderPlot({
    req(input$data_file)
    tryCatch(
      {
        dat_frm <- read.csv(input$data_file$datapath, header = input$header)
        col_num <- as.numeric(input$coln)
        boxplot(dat_frm[,col_num])
      },
      error = function(e) { stop(safeError(e)) }
    )
  })
}
shinyApp(ui, server)