\name{tweak.std}
\alias{tweak.std}

\title{
Modify std object
}

\description{
The function is used for modifying of existing \code{std} object.
}

\usage{
tweak.std(
  x,
  desc = desc.std(x = x),
  lmargs = as.list(x[[1]]$lmfit$call[-c(1:3)]))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
\code{std} object to be modified
}
  \item{desc}{
list of description meta data, default is original meta data of object \code{x}
}
  \item{lmargs}{
list of \code{lm} additional arguments, default is original \code{lmargs} taken from \code{lm} call (all \code{lm} arguments except \code{formula} and \code{data})
}
}

\details{
The function modifies the \code{std} object or just refresh the \code{x} object while recalculating the \code{lm} fit, Rosin - Rammler coefficients and characteristic sizes. The refreshing of an old saved object can be useful in case that \code{lm} fit structure changes across \R versions as the \code{std} object encapsulates \code{lm} fit result.
}

\value{
Returns \code{std} object with length = 1.
}

%% \references{
%% ~put references to the literature/web site here ~
%%}

%% \author{ Petr Matousu }

%% \note{
%%  ~~further notes~~
%% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{desc.std}}, \code{\link{std}}
}

\examples{
# Load the data, modify linear model and plot.
data(lignite)
std1 <- lignite[2]
std2 <- tweak.std(lignite[2],lmargs = list(weights=c(1,1,0,1)),
        desc = desc.std(x=std1,Title="Lignite w 1 1 0 1"))
plot(c(std1,std2))
}

\keyword{utilities}
