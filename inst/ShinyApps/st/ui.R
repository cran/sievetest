#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:  UI
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# bootstrap styling help
# http://getbootstrap.com/2.3.2/base-css.html
# nebo
# http://getbootstrap.com/css/

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:  UI fragments
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# sysinfo
sysinfo <- navlistPanel(widths = c(2,10),"Outputs",
                        tabPanel("Session Environment",dataTableOutput(outputId="sessionenvTab")),
                        tabPanel("Session Request Environment",dataTableOutput(outputId="requestenvTab")),
                        tabPanel("Server Environment (e)",dataTableOutput(outputId="workenvTab")),
                        tabPanel("ClientData Values",verbatimTextOutput(outputId="clientdataText")),
                        tabPanel("Input Table",dataTableOutput(outputId="inputTab")),
                        tabPanel("Input Values",verbatimTextOutput(outputId="inputdataText")),
                        tabPanel("Sysinfo",verbatimTextOutput(outputId="sysinfoText")),
                        tabPanel("Options",verbatimTextOutput(outputId="optionsText")),
                        tabPanel("GlobalEnv",dataTableOutput(outputId="globalenv")),
                        tabPanel("Shiny",verbatimTextOutput(outputId="shinyText")),
                        tabPanel("Test",textareaInput(inputId = "query_set","",nrows=20,ncols=150),actionButton(inputId = "query_go", label = strong("Go!")),p(" "),verbatimTextOutput(outputId="query_rslt"))
)

# help
helppages <- navlistPanel(widths = c(2,10),
  "Help pages",
  tabPanel("Main", checkIncludeMarkdown("./helppages/main.md")),
  tabPanel("GUI features", checkIncludeMarkdown(path = "./helppages/guiftrs.md")),
  tabPanel("Model features", checkIncludeMarkdown(path = "./helppages/model.md")),
  tabPanel("Workflow", checkIncludeMarkdown(path = "./helppages/workflow.md")),
  tabPanel("Tutorial", checkIncludeMarkdown(path = "./helppages/tutorial.md")),
  tabPanel("Limitations", checkIncludeMarkdown(path = "./helppages/limitations.md"))
)

about <- NULL
header <- NULL

# hlavni stranka
ui <-  navbarPage(title = strong(st.title),
        tabPanel("Home", home),
        tabPanel("Help", helppages),
        tabPanel("About", about),
        tabPanel("Sysinfo", sysinfo),
        id="ui_navbar",
        inverse=TRUE,
        header=header,
        windowTitle=st.title
)

ui
