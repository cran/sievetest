\name{read.std}
\alias{read.std}

\title{
Data input from file
}

\description{
Reads \code{std} data from CSV file and creates \code{std} object.
}

\usage{
read.std(file, sep = "\\t", dec = ".")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
file path.
}
  \item{sep}{
field separator used in the file, defaults to "\\t".
}
  \item{dec}{
the character used in the file for decimal points, defaults to ".".
}
}

\details{
The \code{file} format allows to have more test data within one file.

  \tabular{llll}{
# Meta data  \tab --- \tab --- \tab --- \cr
D1 names \tab D1 values \tab DN names \tab DN values \cr
# Data  \tab --- \tab --- \tab --- \cr
aperture  \tab retained \tab aperture \tab retained \cr
A1 \tab R1 values \tab An \tab Rn values \cr
  }

Section D1 or DN is 5 rows of meta data. \cr
Commented lines must not be removed. \cr
Multi row columns A and R corresponds to \code{a} and \code{r} arguments of
\code{std} function, D corresponds to \code{desc}.

The file must have at least two columns, then it is just for 1 sample data,
or it can have Nx2 columns for N samples.

Data section allows for different number of A1 and AN rows.


}

\value{
Returns a \code{std} object.
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
\code{\link{std}}, \code{\link{c.std}}, \code{\link{summary.std}}
}

\examples{
# provided example file
fi <- system.file("lignite.csv",package="sievetest")
# inspect the file
file.show(fi)
# read the file
# there will be warning, because the file is prepared the way
# to show them, they are OK
a <- read.std(fi)
plot(a)
}


\keyword{IO}
