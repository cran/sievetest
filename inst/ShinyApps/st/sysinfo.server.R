  #:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  #:  Rendrovani diagnostickych vystupu
  #:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  output$workenvTab <- renderDataTable({lsWrkEnv()},env=e)
  output$workenvTab <- renderDataTable({lsWrkEnv()},env=e)
  output$sessionenvTab <- renderDataTable({lsSesEnv()},env=e)
  output$requestenvTab <- renderDataTable({lsRqsEnv()},env=e)
  output$globalenv <- renderDataTable({lsGlobEnv()},env=e)
  output$clientdataText <- renderText({get_clientdataText()},env=e)
  output$inputdataText <- renderText({get_inputdataText()},env=e)
  output$inputTab <- renderDataTable({lsInput()},env=e)
  output$sysinfoText <- renderText({list2text(as.list(Sys.info()))},env=e)
  output$optionsText <- renderText({
    ol <- options()
    fid <- which(sapply(ol,class) == "function")
    list2text(ol[-fid])},env=e)
  output$shinyText <- renderText({list2text(packageDescription("shiny"))},env=globalenv())
  output$query_rslt <- renderPrint({input$query_go;eval(parse(text=isolate(input$query_set)))},env=e,width=150)

  get_clientdataText <- reactive({
    # vypis klientskych dat
    list2text(session$clientData)
  })

  get_inputdataText <- reactive({
    # vypis klientskych dat
    list2text(session$input)
  })

  # ls environmentu
  lsWrkEnv <- reactive({
    ll(pos=e)
  })

  # ls environmentu
  lsGlobEnv <- reactive({
    ll(pos=globalenv())
  })

  lsSesEnv <- reactive({
    ll(pos=session)
  })

  lsRqsEnv <- reactive({
    ll(pos=session$request)
  })

  lsInput <- reactive({
    tmp <- as.environment(reactiveValuesToList(input))
    ll(pos=tmp)
  })


