\name{plot.std}

\alias{plot.std}

\title{Sieve Test Data Object Plot}

\description{
The function plots graphical presentation of Rosin-Rammler particle size distribution of powder which is common in grinding and comminution.
}

\usage{
\method{plot}{std}(x, 
   type=c("rr","rrdist"), 
   n=30, 
   lgd=T, 
   col=c("#1B9E77", "#D95F02", "#7570B3", "#E7298A",
         "#66A61E", "#E6AB02", "#A6761D", "#666666"), 
   bx=1, 
   by=5, 
   lgd.x="topleft",  
   ...)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an std object representing sieve test data. }
  \item{type}{type of plot}
  \item{n}{a factor influencing density of ticks marks}
  \item{lgd}{whether to show legend}
  \item{col}{vector of colors}
  \item{bx}{a factor influencing rounding of x values for labels}
  \item{by}{a factor influencing rounding of y values for labels}
  \item{lgd.x}{legend position}
  \item{\dots}{additional graphical parameters}
  }

%%  \details{
%%  TODO ~~ If necessary, more details than the description above ~~
%%  }

\value{Plots an std object to the current device.}

%%  \references{
%% ~put references to the literature/web site here ~
%%  }

%% \author{ Petr Matousu }

%%  \note{
%%  ~~further notes~~
%%  }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{std}}, \code{\link{par}}
}

\examples{
# load example data and make plot
data(lignite)
plot(lignite)
plot(lignite,type='rrdist',lwd=2,lgd.x="right")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hplot}
