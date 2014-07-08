\name{std}
\alias{std}
\alias{is.std}
\alias{[.std}

\title{
Sieve Test Data Object
}

\description{
Functions to create, test and subset a \code{std} object.
}

\usage{
std(a, r, desc = desc.std(), lmargs = list())
is.std(x)
\method{[}{std}(x, i, ...)
}

\arguments{
  \item{a}{
A vector of sieve net aperture sizes in micrometers, zero size means the receiver. 

}
  \item{i}{
An integer or vector of integers
}
  \item{r}{
Mass percent of remaining material on the sieve, vector with the same length as vector \code{a}, sum should be equal 100, if not the function will give warning and recalculate the values. If the value is 0, then will be excluded with warning.
}
  \item{desc}{
A description meta data prepared by \code{desc.std}
}
  \item{lmargs}{
A list of additional arguments to \code{lm}
}
  \item{x}{
An object of \code{std} class
}
  \item{\dots}{
Not used
}
}

\details{
Basically the \code{std} object is list of lists, in the first level (trunk) are stored particular sieve test samples, in the second level (branches) are stored details of each single sample. If there is only one sample in the \code{std} object, then the length will be 1.
The object can be created by hand using \code{std} function or by reading the basic information from CSV file using \code{read.std} function.
Once the \code{std} object exists, it can be sub-selected using \code{x[i]} or concatenated by \code{c(...)}.

}

\value{
Both \code{std(a,r)} and \code{x[i]} functions return \code{std} object, \code{x[[i]]} returns list holding following informations:

\item{Description }{Terse description of a sample}
\item{Title }{Title of particular measurement}
\item{Sample }{Name of the sample}
\item{Unit }{To which unit the sample belongs}
\item{Date }{Day when the sample was taken}
\item{stdata }{Data frame with given and calculated values}
\item{lmfit }{Result of linear model fit, \code{lm} object}
\item{RRcoefficients }{List of coefficients for Rosin - Rammler distribution}
\item{size }{List of characteristic sizes of Rosin - Rammler distribution}

The  \code{is.std(x) function returns logical value.}
}

%% \references{
%% TODO references
%% }

%% \author{ Petr Matousu }

%% \note{
%%  ~~further notes~~
%% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{read.std}}, \code{\link{c.std}}, \code{\link{summary.std}}, \code{\link{tweak.std}}
}

\examples{
## create std
sieve_aperture_size <- c(500, 200, 90, 0)
mass_ppc_retained <- c(1.01, 24, 42.8, 32.190)
# some meta data:
md <- desc.std("Coal powder, learning std")
# sieve test data (std) object
my_sample <- std(a=sieve_aperture_size, r=mass_ppc_retained, desc=md)
is.std(my_sample)
}

\keyword{utilities}
