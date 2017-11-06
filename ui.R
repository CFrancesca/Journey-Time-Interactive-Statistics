ui <- fluidPage(
  titlePanel("Journey times to key services by local authority"),
  sidebarLayout(
    sidebarPanel(
      selectInput("show_tab", "Data to select:",
                  c("Employment Centre","Primary School","Secondary School",
                    "Further Education","GP Doctor","Hospital","Food Store","Town Center"), 
                  multiple = FALSE, selectize = TRUE),
      conditionalPanel(
        condition = 'input.show_tab === "Employment Centre"',
        selectInput("show_varsEmp", "Variable to select:",
                    names(D15Emp), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Primary School"',
        selectInput("show_varsPS", "Variable to select:",
                    names(D15PS), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Secondary School"',
        selectInput("show_varsSS", "Variable to select:",
                    names(D15SS), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Further Education"',
        selectInput("show_varsFE", "Variable to select:",
                    names(D15FE), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "GP Doctor"',
        selectInput("show_varsGP", "Variable to select:",
                    names(D15GP), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Hospital"',
        selectInput("show_varsH", "Variable to select:",
                    names(D15H), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Food Store"',
        selectInput("show_varsF", "Variable to select:",
                    names(D15F), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      ),
      conditionalPanel(
        condition = 'input.show_tab === "Town Center"',
        selectInput("show_varsT", "Variable to select:",
                    names(D15T), multiple = TRUE, selected= c("Region", "LA_Name"), selectize = TRUE)
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel("2015", DT::dataTableOutput("mytable1")),
        tabPanel("2014", DT::dataTableOutput("mytable2")),
        tabPanel("Variable Description", DT::dataTableOutput("mytable3"))
      )
    )
  )
)
