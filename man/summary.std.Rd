\name{summary.std}
\alias{summary.std}

\title{
Summary of std object
}

\description{
The function makes summary table of \code{std} object.
}

\usage{
\method{summary}{std}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
\code{std} object
}
  \item{\dots}{
not used
}
}

%% \details{
%%  ~~ If necessary, more details than the description above ~~
%% }

\value{
Returns data frame with following columns:
\item{Description }{Terse description of a sample}
\item{Title }{Title of particular measurement}
\item{Sample }{Name of the sample}
\item{Unit }{To which unit the sample belongs}
\item{Date }{Day when the sample was taken}
\item{RRxs}{Rosin - Rammler distribution xs coefficient}
\item{RRex}{Rosin - Rammler distribution ex coefficient}
\item{RRms}{modus calculated from Rosin - Rammler approximation}
\item{RRmn}{mean calculated from Rosin - Rammler approximation}
\item{RRo90umPPC}{CCDF (oversize) value in \% calculated from Rosin - Rammler approximation for equivalent particle size of 90 micrometers}

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
\code{\link{drr}}, \code{\link{std}}
}

\examples{
data(lignite)
summary(lignite)
}

\keyword{utilities}
