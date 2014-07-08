\name{drr}
\alias{drr}
\alias{orr}
\alias{urr}

\title{
Rosin - Rammler Distribution Functions
}

\description{
Rosin - Rammler model of particle-size distribution and cumulative undersize and oversize distributions used to obtain approximation of 
of powders or granular materials originated by grinding.
}

\usage{
drr(x, ex, xs)
orr(x, ex, xs)
urr(x, ex, xs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
particle size, equivalent particle diameter
}
  \item{ex}{
Rosin - Rammler exponent, measure of the uniformity of grinding
}
  \item{xs}{
finesse of grinding, that width of mesh associated with a remainder 
equal to \code{exp(-1) ~ 0.3679}
}
}
\details{
Following functions are used, based on Rosin - Rammler mathematical model of particle-size distribution, for approximation of size distribution.

  \code{drr} {is Rosin - Rammler probability density function}\cr
  \code{urr} {is Rosin - Rammler cumulative distribution function (CDF) representing undersize mass fraction}\cr
  \code{orr} {is Rosin - Rammler complementary CDF representing oversize mass fraction ie. relative remainder on the sieve with the mesh size \code{x}}\cr

Rosin - Rammler model (1933) is the Weibull distribution which was proposed by Weibull in 1939, and Weibull distribution functions are part of \R.\cr
So the user can use \code{stats::dweibull(x,shape=ex,scale=xs)} the same way as \code{drr},
and use Weibull distribution functions provided by \code{stats} package for deeper analysis.\cr
Similarly, \code{stats::pweibull(x,shape=ex,scale=xs)} can be used the same way as \code{urr} or\cr
\code{stats::pweibull(x,shape=ex,scale=xs,lower.tail=F)} the same way as \code{orr}.
}

\value{
Both \code{urr} and \code{orr} returns value of distribution function.\cr
Function \code{drr} returns density.
}

\references{
Rinne, H. (2008) \emph{The Weibull Distribution: A Handbook}, chapter 1.1.2. Taylor & Francis.
}

%% \author{ Petr Matousu }

%% \note{
%%  ~~further notes~~
%% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{Weibull}}, \code{\link{plot.std}}, \code{\link{summary.std}}
}

\examples{
## The function drr is currently defined as
#  function (x, ex, xs) 
#  {
#      (ex/xs) * (x/xs)^(ex - 1) * exp(-(x/xs)^ex)
#  }

## The function urr is currently defined as
#  function (x, ex, xs) 
#  {
#      1 - exp(-(x/xs)^ex)
#  }

## The function orr is currently defined as
#  function (x, ex, xs) 
#  {
#      exp(-(x/xs)^ex)
#  }


x <- c(1,5,10,50,100)
ex <- 1.386
xs <- 178
stats::dweibull(x,shape=ex,scale=xs)
drr(x,ex,xs)
stats::pweibull(x,shape=ex,scale=xs)
urr(x,ex,xs)
stats::pweibull(x,shape=ex,scale=xs,lower.tail=FALSE)
orr(x,ex,xs)
}


\keyword{distribution}
