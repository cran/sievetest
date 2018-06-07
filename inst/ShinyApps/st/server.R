#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:  server function
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ss <- shinyServer(function(input, output, session) {
# link na mistni env
e <- environment()

# fragments
fns <- c("main.server.R","sysinfo.server.R")
for (fn in fns) {
if(file.exists(fn)) source(fn, local=TRUE)
}

})

ss
