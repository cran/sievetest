\name{rrx2x}
\alias{rrx2x}
\alias{rry2y}
\alias{x2rrx}
\alias{rrx2x}
\alias{y2rry}

\title{
Sieve Test Data Object Plot Coordinates Transformation Functions
}

\description{
Function transform user coordinates of plot to axis coordinates or vise versa.
}

\usage{
rrx2x(x)
rry2y(x)
x2rrx(x)
y2rry(x)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Value to transform.
}
}

\details{
The default plot type "rr" uses transformed coordinates, so the user can
read percents on y axis and micrometers on x axis, while \code{par('usr')}
returns coordinates in \code{log(x)} and \code{log(log(100/y))}.
Hence the user can use transformation functions to convert between the types.
The "rr" keyword in the name of function, belongs to the log x log-log (usr) space.
}

\value{
Functions return appropriate transformed value.
}

%% \references{
%% ~put references to the literature/web site here ~
%% }

%% \author{ Petr Matousu }

%% \note{
%%  ~~further notes~~
%% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plot.std}}
}

\examples{
data(lignite)
plot(lignite)
# query for exact x coordinates within the plot
if(interactive()) rrx2x(locator()$x)
# query for exact y coordinates within the plot
if(interactive()) rry2y(locator()$y)
# or 
y2rry(36.78794)
# or
rrx2x(par('usr')[1])
}

\keyword{dplot}
