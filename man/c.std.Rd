\name{c.std}
\alias{c.std}

\title{
Concatenate std object
}

\description{
The function is used to concatenate more sievetest objects together.
}

\usage{
\method{c}{std}(...)
}

\arguments{
  \item{\dots}{
one or more \code{std} objects
}
}

%% \details{
%%  ~~ If necessary, more details than the description above ~~
%% }

\value{
Returns one \code{std} object concatenated of objects supplied in \dots containing all the sieve test samples grouped together.
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
\code{\link{read.std}}, \code{\link{std}}, \code{\link{summary.std}}
}

\examples{
data(lignite)
# a and b simulate some new std objects
a <- lignite[2]
b <- lignite[1]
#
ab_group <- c(a,b)
}

\keyword{utilities}
