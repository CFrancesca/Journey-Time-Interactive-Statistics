#Author: Francesca Corvaglia

server <- function(input, output) {
  
  # choose columns to display
  output$mytable1 <- DT::renderDataTable({ 
    if (input$show_tab =="Employment Centre") 
    {DT::datatable(D15Emp[, input$show_varsEmp, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Primary School")
    {DT::datatable(D15PS[, input$show_varsPS, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Secondary School")
    {DT::datatable(D15SS[, input$show_varsSS, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Further Education")
    {DT::datatable(D15FE[, input$show_varsFE, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="GP Doctor")
    {DT::datatable(D15GP[, input$show_varsGP, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Hospital")
    {DT::datatable(D15H[, input$show_varsH, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Food Store")
    {DT::datatable(D15F[, input$show_varsF, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Town Center")
    {DT::datatable(D15T[, input$show_varsT, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else {message("A table is missing")
    }
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    if (input$show_tab =="Employment Centre") 
    {DT::datatable(D14Emp[, input$show_varsEmp, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Primary School")
    {DT::datatable(D14PS[, input$show_varsPS, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Secondary School")
    {DT::datatable(D14SS[, input$show_varsSS, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Further Education")
    {DT::datatable(D14FE[, input$show_varsFE, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="GP Doctor")
    {DT::datatable(D14GP[, input$show_varsGP, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Hospital")
    {DT::datatable(D14H[, input$show_varsH, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Food Store")
    {DT::datatable(D14F[, input$show_varsF, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else if (input$show_tab =="Town Center")
    {DT::datatable(D14T[, input$show_varsT, drop = FALSE], options = list(pageLength = 100), rownames= FALSE)
    }
    else {message("A table is missing")
    }
  })
  
  
  # Legend
  output$mytable3 <- DT::renderDataTable({
    if (input$show_tab =="Employment Centre")  {
      DT::datatable(DdesEmp, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Primary School") {
      DT::datatable(DdesPS, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Secondary School") {
      DT::datatable(DdesSS, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Further Education") {
      DT::datatable(DdesFE, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="GP Doctor") {
      DT::datatable(DdesGP, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Hospital") {
      DT::datatable(DdesH, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Food Store") {
      DT::datatable(DdesF, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else if (input$show_tab =="Town Center") {
      DT::datatable(DdesT, options = list(lengthMenu = c(5, 50, 30), pageLength = 50), 
                    rownames= FALSE)
    }
    else { message("A table is missing")
    }
  })
  
}
