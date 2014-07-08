\name{desc.std}
\alias{desc.std}

\title{
Sieve Test Data Object Description
}

\description{
The function for querying a \code{std} object for description meta data
or creating new description meta data list.
}

\usage{
desc.std(Description = NA,
         Title = NA,
         Sample = NA,
         Unit = NA,
         Date = NA,
         x = NULL)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
\item{Description }{Terse description of a sample}
\item{Title }{Title of particular measurement}
\item{Sample }{Name of the sample}
\item{Unit }{To which unit the sample belongs}
\item{Date }{Day when the sample was taken}
\item{x}{An existing \code{std} object}
}
\details{
To be used for creating input for \code{desc} argument in functions 
\code{std} and \code{tweak.std}.
}
\value{
Returns a list of 5:
\item{Description }{}
\item{Title }{}
\item{Sample }{}
\item{Unit }{}
\item{Date }{}
}
%% \references{
%% ~put references to the literature/web site here ~
%% }

%% \author{ Petr Matousu }

% \note{
%%  ~~further notes~~
% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{std}}
}

\examples{
# create the object by hand
# sieve test data (std) object
my_sample <- std(
a=c(500, 200, 90, 0),
r=c(1.01, 24, 42.8, 32.190),
desc=desc.std(Title="Coal powder, learning std")
)

}

\keyword{utilities}
