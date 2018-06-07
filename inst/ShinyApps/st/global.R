st.title <- getOption('st.page.title',default="Sieve Test Online")

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:  UTILITY
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# list env
ll <- function (pos = 1, pattern,all.names=FALSE,order.by=c("Type","Size"),
                decreasing=FALSE, n, grep.type="", pretty.size=TRUE) {

    napply <- function(nm, fn) sapply(nm, function(x)
                                         fn(get(x, pos = pos)))
    nms <- ls(pos = pos, pattern = pattern, all.names = all.names)
    out <- data.frame()
    if(length(nms) >= 1) {
    obj.class <- napply(nms, function(x) as.character(class(x))[1])
    obj.mode <- napply(nms, mode)
    obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
    obj.prettysize <- napply(nms, function(x) {
                           capture.output(print(object.size(x), units = "auto")) })
    obj.size <- napply(nms, object.size)
    obj.dim <- t(napply(nms, function(x)
                        as.numeric(dim(x))[1:2]))
    vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
    obj.dim[vec, 1] <- napply(nms, length)[vec]
    out <- data.frame(
    Name=nms,
    Type=obj.type,
    Size=ifelse(pretty.size, obj.prettysize, obj.size),
    Rows=obj.dim[,1],
    Cols=obj.dim[,2],
    stringsAsFactors=FALSE
    )
    ordix <- do.call(order,c(as.list(out[,order.by]),decreasing=decreasing))
    out <- out[ordix, ]
    if (!missing(grep.type)) out <- out[grep(grep.type,out$Type),]
    if (!missing(n)){
    if (n > 1) out <- head(out, n)
    if (n < 1) out <- tail(out, abs(n))
    }
    rownames(out) <- NULL
    }
    return(out)
}


# tiskne citelne obsah x listu
list2text <- function(x)  {
# Values from X returned as text
  xnames <- names(x)
  allvalues <- lapply(xnames, function(name) {
    paste(name, x[[name]], sep=" = ")
  })
  paste(allvalues, collapse = "\n")
}


#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:  ROZSIRENI SHINY
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# input pro textarea
textareaInput <- function(inputId, value="", nrows, ncols) {
    tagList(
        singleton(tags$head(tags$script(src = "www/textarea.js"))),
        tags$textarea(id = inputId,
                    class = "textareaInput",
                    rows = nrows,
                    cols = ncols,
                    as.character(value))
    )
}

# vlozi existujici MD, nebo vlozi message jako fallback
# pouzivam pro vkladani helpu a pod
checkIncludeMarkdown <- function(path)  {
fi <- normalizePath(path,mustWork=FALSE)
  if(!file.exists(fi)) {
    path <- file.path(tempdir(),"no.such.path.md")
    msg <- sprintf("
The path %s
is not currently available.
    ", fi)
    writeLines(msg,path)
  } else {
    path <- fi
  }
return(includeMarkdown(path))
}
